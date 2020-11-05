import 'dart:core';

import "package:collection/collection.dart";
import 'package:tinkoff_api/model/candle_resolution.dart';
import 'package:tinkoff_api/model/currency.dart';
import 'package:tinkoff_api/model/money_amount.dart';
import 'package:tinkoff_api/model/portfolio_position.dart';
import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest/utils/iterable_etensions.dart';

extension ApiServiceExtension on ApiService {
  Future<double> actualPrice(String figi) async {
    final now = DateTime.now().toUtc();
    final candles = await this.candles(
      figi,
      now.subtract(Duration(days: 15)),
      now,
      CandleResolution.day,
    );
    return candles.candles.last.c;
  }

  Future<double> income(String figi) async {
    final operations = await this.operations(figi: figi);
    final expenses =
        operations.operations.map((it) => it.payment).fold(0, (a, b) => a + b);

    final actualPrice = await this.actualPrice(figi);

    final portfolio = await this.portfolio();
    final inPortfolio = portfolio.positions.firstWhere((it) => it.figi == figi);

    final valueInPortfolio = inPortfolio.lots * actualPrice;

    return expenses + valueInPortfolio;
  }

  Future<MoneyAmount> convert(MoneyAmount from, Currency to) async {
    if (from.currency == to) return from;

    final currencies = (await this.currencies()).instruments;
    final curToFigi =
        currencies.map((cur) => MapEntry(_curFromTicker(cur.ticker), cur.figi));
    final curToRub = await Stream.fromIterable(curToFigi)
        .asyncMap(
          (entry) async => MapEntry(entry.key, await actualPrice(entry.value)),
        )
        .toList();
    curToRub.add(MapEntry(Currency.rUB, 1));

    final amountInRub =
        curToRub.firstWhere((entry) => entry.key == from.currency).value *
            from.value;

    final resultAmount =
        amountInRub / curToRub.firstWhere((entry) => entry.key == to).value;

    return MoneyAmount((b) => b
      ..currency = to
      ..value = resultAmount);
  }

  Future<MoneyAmount> totalMoney(Currency currency) async {
    final portfolio = await this.portfolio();
    final Iterable<MapEntry<Currency, List<PortfolioPosition>>>
        groupedByCurrency = groupBy<PortfolioPosition, Currency>(
      portfolio.positions,
      (position) => position.averagePositionPrice.currency,
    ).entries;

    final List<MoneyAmount> amounts =
        await Stream.fromIterable(groupedByCurrency)
            .asyncMap(
              (entry) async => MapEntry(
                entry.key,
                await entry.value.sumAsync((position) async =>
                    position.balance * await actualPrice(position.figi)),
              ),
            )
            .map((entry) => MoneyAmount(
                  (b) => b
                    ..value = entry.value
                    ..currency = entry.key,
                ))
            .toList();

    final result = await amounts
        .sumAsync((money) async => (await convert(money, currency)).value);

    return MoneyAmount(
      (b) => b
        ..value = result
        ..currency = currency,
    );
  }
}

Currency _curFromTicker(String ticker) {
  if (ticker.startsWith("USD")) {
    return Currency.uSD;
  }
  if (ticker.startsWith("EUR")) {
    return Currency.eUR;
  }
  throw ArgumentError("unknown currency $ticker");
}
