import 'package:collection/collection.dart';
import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest/services/api_service_extension.dart';
import 'package:tinkoff_invest/services/currencies_converter.dart';
import 'package:tinkoff_invest/services/portfolio_provider.dart';
import 'package:tinkoff_invest/utils/iterable_etensions.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

class TotalMoneyCalculator {
  final ApiService _apiService;
  final CurrenciesConverter _currenciesConverter;
  final PortfolioProvider _portfolioProvider;

  TotalMoneyCalculator(
      this._apiService, this._currenciesConverter, this._portfolioProvider);

  Future<MoneyAmount> sumPositionsAmount(Currency currency) async {
    final Iterable<PortfolioPosition> portfolioPositions =
        (await _portfolioProvider.portfolio()).positions;
    final List<MoneyAmount> amounts =
        await Stream.fromIterable(portfolioPositions) //
            .asyncMap((p) async {
      final value = p.balance * await _apiService.actualPrice(p.figi);
      return MoneyAmount((b) => b
        ..value = value
        ..currency = p.averagePositionPrice!.currency);
    }).toList();

    return await amountsSum(currency, amounts);
  }

  Future<MoneyAmount> amountsSum(
      Currency currency, Iterable<MoneyAmount> moneyAmounts) async {
    final Iterable<MapEntry<Currency, List<MoneyAmount>>> groupedByCurrency =
        groupBy<MoneyAmount, Currency>(
      moneyAmounts,
      (amount) => amount.currency,
    ).entries;

    final List<MoneyAmount> amounts = groupedByCurrency //
        .map(
          (entry) => MapEntry(
            entry.key,
            entry.value
                .fold<double>(0.0, (prev, amount) => prev + amount.value),
          ),
        )
        .map((entry) => MoneyAmount(
              (b) => b
                ..value = entry.value
                ..currency = entry.key,
            ))
        .toList();

    final result = await amounts.sumAsync((money) async =>
        (await _currenciesConverter.convert(money, currency)).value);

    return MoneyAmount(
      (b) => b
        ..value = result
        ..currency = currency,
    );
  }
}
