import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

import 'actual_price_provider.dart';

class CurrenciesConverter {
  final ApiService _apiService;
  final ActualPriceProvider _actualPriceProvider;

  List<MapEntry<Currency, double>>? _curToRub;
  DateTime _lastUpdate = DateTime.now();
  Future<MarketInstrumentList>? _currenciesFuture;

  CurrenciesConverter(this._apiService, this._actualPriceProvider);

  Future<MoneyAmount> convert(MoneyAmount from, Currency to) async {
    if (from.currency == to) return from;
    final currenciesFuture =
        _currenciesFuture ?? (_currenciesFuture = _apiService.currencies());
    final currencies = (await currenciesFuture).instruments;
    final curToFigi =
        currencies.map((cur) => MapEntry(_curFromTicker(cur.ticker), cur.figi));
    List<MapEntry<Currency, double>> curToRub;
    if (_curToRub == null || _isCacheOutdated()) {
      curToRub = await Stream.fromIterable(curToFigi)
          .asyncMap(
            (entry) async => MapEntry(
                entry.key, await _actualPriceProvider.actualPrice(entry.value)),
          )
          .toList();
      curToRub.add(MapEntry(Currency.RUB, 1));
      _curToRub = curToRub;
      _lastUpdate = DateTime.now();
    } else {
      curToRub = _curToRub!;
    }

    final amountInRub =
        curToRub.firstWhere((entry) => entry.key == from.currency).value *
            from.value;

    final resultAmount =
        amountInRub / curToRub.firstWhere((entry) => entry.key == to).value;

    return MoneyAmount((b) => b
      ..currency = to
      ..value = resultAmount);
  }

  void invalidate() {
    _curToRub = null;
    _currenciesFuture = null;
  }

  bool _isCacheOutdated() =>
      DateTime.now().subtract(Duration(minutes: 30)).isAfter(_lastUpdate);

  Currency _curFromTicker(String ticker) {
    if (ticker.startsWith("USD")) {
      return Currency.USD;
    }
    if (ticker.startsWith("EUR")) {
      return Currency.EUR;
    }
    throw ArgumentError("unknown currency $ticker");
  }
}
