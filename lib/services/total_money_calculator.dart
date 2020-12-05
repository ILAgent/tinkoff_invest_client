import 'package:freezed_annotation/freezed_annotation.dart';
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

  Future<MoneyAmount> totalMoney(Currency currency, {Iterable<PortfolioPosition> positions}) async {
    final Iterable<PortfolioPosition> portfolioPositions = positions ?? (await _apiService.portfolio()).positions;
    final Iterable<MapEntry<Currency, List<PortfolioPosition>>> groupedByCurrency = groupBy<PortfolioPosition, Currency>(
      portfolioPositions,
      (position) => position.averagePositionPrice.currency,
    ).entries;

    final List<MoneyAmount> amounts = await Stream.fromIterable(groupedByCurrency)
        .asyncMap(
          (entry) async => MapEntry(
            entry.key,
            await entry.value.sumAsync((position) async => position.balance * await _apiService.actualPrice(position.figi)),
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
