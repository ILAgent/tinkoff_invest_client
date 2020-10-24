import 'package:tinkoff_api/model/candle_resolution.dart';
import 'package:tinkoff_invest/services/api_service.dart';

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

}
