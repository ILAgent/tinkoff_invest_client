import 'package:built_collection/built_collection.dart';
import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest/services/api_service_extension.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

class CurrenciesConverter {
  final ApiService _apiService;
  List<MapEntry<Currency, double>>? _curToRub;
  DateTime _lastUpdate = DateTime.now();
  BuiltList<MarketInstrument>? _currencies;

  CurrenciesConverter(this._apiService);

  Future<MoneyAmount> convert(MoneyAmount from, Currency to) async {
    if (from.currency == to) return from;

    final currencies = _currencies ??
        (_currencies = (await _apiService.currencies()).instruments);
    final curToFigi =
        currencies.map((cur) => MapEntry(_curFromTicker(cur.ticker), cur.figi));
    List<MapEntry<Currency, double>> curToRub;
    if (_curToRub == null || _isCacheOutdated()) {
      curToRub = await Stream.fromIterable(curToFigi)
          .asyncMap(
            (entry) async =>
                MapEntry(entry.key, await _apiService.actualPrice(entry.value)),
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
