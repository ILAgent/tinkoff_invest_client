import 'package:dio/dio.dart';
import 'package:tinkoff_api/api.dart';
import 'package:tinkoff_api/model/candle_resolution.dart';
import 'package:tinkoff_api/model/candles.dart';
import 'package:tinkoff_api/model/operations.dart';
import 'package:tinkoff_api/model/portfolio.dart';
import 'package:tinkoff_api/model/sandbox_register_request.dart';

import 'private_data.dart' as Private;

class ApiService {
  final TinkoffApi _api;

  ApiService._initApi(TinkoffApi api) : _api = api;

  factory ApiService._create(String url, String token) {
    final options = BaseOptions(
      baseUrl: url,
      connectTimeout: 5000,
      receiveTimeout: 3000,
      headers: {"Authorization": "Bearer $token"},
    );
    final api = TinkoffApi(dio: Dio(options));
    return ApiService._initApi(api);
  }

  static Future<ApiService> sandbox() async {
    final service = ApiService._create(
        "https://api-invest.tinkoff.ru/openapi/sandbox", Private.sandboxToken);
    await service._initSandbox();
    return service;
  }

  factory ApiService() {
    final service = ApiService._create(
        "https://api-invest.tinkoff.ru/openapi", Private.token);
    return service;
  }

  Future<void> _initSandbox() async {
    await _api
        .getSandboxApi()
        .sandboxRegisterPost(sandboxRegisterRequest: SandboxRegisterRequest());
  }

  Future<Portfolio> portfolio() async {
    return (await _api.getPortfolioApi().portfolioGet()).data.payload;
  }

  Future<Operations> operations({String figi}) async {
    final response = await _api.getOperationsApi().operationsGet(
          DateTime(2010, 6, 1).toUtc(),
          DateTime.now().toUtc(),
          figi: figi,
        );
    return response.data.payload;
  }

  Future<Candles> candles(
    String figi,
    DateTime from,
    DateTime to,
    CandleResolution interval,
  ) async {
    final response = await _api.getMarketApi().marketCandlesGet(
          figi,
          from,
          to,
          interval,
        );
    return response.data.payload;
  }
}
