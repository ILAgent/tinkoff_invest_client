import 'package:collection/collection.dart';
import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest/services/api_service_extension.dart';
import 'package:tinkoff_invest/services/currencies_converter.dart';
import 'package:tinkoff_invest/utils/iterable_etensions.dart';
import 'package:tinkoff_invest_api/model/currency.dart';
import 'package:tinkoff_invest_api/model/money_amount.dart';
import 'package:tinkoff_invest_api/model/portfolio_position.dart';

class TotalMoneyCalculator {
  final ApiService _apiService;
  final CurrenciesConverter _currenciesConverter;

  TotalMoneyCalculator(this._apiService, this._currenciesConverter);

  Future<MoneyAmount> sumPositionsAmount(Currency currency, {Iterable<PortfolioPosition> positions}) async {
    final Iterable<PortfolioPosition> portfolioPositions = positions ?? (await _apiService.portfolio()).positions;
    final List<MoneyAmount> amounts = await Stream.fromIterable(portfolioPositions) //
        .asyncMap((p) async {
      final value = p.balance * await _apiService.actualPrice(p.figi);
      return MoneyAmount((b) => b
        ..value = value
        ..currency = p.averagePositionPrice.currency);
    }).toList();

    return await amountsSum(currency, amounts);
  }

  Future<MoneyAmount> amountsSum(Currency currency, Iterable<MoneyAmount> moneyAmounts) async {
    final Iterable<MapEntry<Currency, List<MoneyAmount>>> groupedByCurrency = groupBy<MoneyAmount, Currency>(
      moneyAmounts,
      (amount) => amount.currency,
    ).entries;

    final List<MoneyAmount> amounts = groupedByCurrency //
        .map(
          (entry) => MapEntry(
            entry.key,
            entry.value.fold(0.0, (prev, amount) => prev + amount.value),
          ),
        )
        .map((entry) => MoneyAmount(
              (b) => b
                ..value = entry.value
                ..currency = entry.key,
            ))
        .toList();

    final result = await amounts.sumAsync((money) async => (await _currenciesConverter.convert(money, currency)).value);

    return MoneyAmount(
      (b) => b
        ..value = result
        ..currency = currency,
    );
  }
}
