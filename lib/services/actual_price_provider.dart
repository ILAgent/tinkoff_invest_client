import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

class ActualPriceProvider {
  final ApiService _apiService;
  final Map<String, Future<double>> _pricesCache = {};

  ActualPriceProvider(this._apiService);

  Future<double> actualPrice(String figi) {
    return _pricesCache[figi] ?? (_pricesCache[figi] = _calcActualPrice(figi));
  }

  Future<double> _calcActualPrice(String figi) async {
    final now = DateTime.now().toUtc();
    final candles = await _apiService.candles(
      figi,
      now.subtract(Duration(days: 15)),
      now,
      CandleResolution.day,
    );
    return candles.candles.last.c;
  }

  void invalidate() {
    _pricesCache.clear();
  }
}
