import 'dart:math';

import 'package:dio/dio.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

import 'private_data.dart' as Private;

class ApiService {
  final TinkoffInvestApi _api;

  int _lastCall = 0;
  int _totalCalls = 0;

  ApiService._initApi(TinkoffInvestApi api) : _api = api;

  factory ApiService._create(String url, String token) {
    final options = BaseOptions(
      baseUrl: url,
      connectTimeout: 5000,
      receiveTimeout: 3000,
      headers: {"Authorization": "Bearer $token"},
    );
    final api = TinkoffInvestApi(dio: Dio(options));
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
    return (await _delayed(
      () => _api.getPortfolioApi().portfolioGet(),
      description: "portfolio",
    ))
        .data!
        .payload;
  }

  Future<Operations> operations({
    String? figi,
    DateTime? from,
    DateTime? to,
  }) async {
    final response = await _delayed(
        () => _api.getOperationsApi().operationsGet(
              from: from ?? DateTime(2010, 6, 1).toUtc(),
              to: to ?? DateTime.now().toUtc(),
              figi: figi,
            ),
        description: "operations figi = $figi");
    return response.data!.payload;
  }

  Future<Candles> candles(
    String figi,
    DateTime from,
    DateTime to,
    CandleResolution interval,
  ) async {
    final response = await _delayed(
      () => _api.getMarketApi().marketCandlesGet(
            figi: figi,
            from: from,
            to: to,
            interval: interval,
          ),
      description: "candles figi = $figi",
    );
    return response.data!.payload;
  }

  Future<MarketInstrumentList> currencies() async {
    final response = await _delayed(
      () => _api.getMarketApi().marketCurrenciesGet(),
      description: "currencies",
    );
    return response.data!.payload;
  }

  Future<SearchMarketInstrument> instrumentByFigi(String figi) async {
    final response = await _delayed(
      () => _api.getMarketApi().marketSearchByFigiGet(figi: figi),
      description: "marketSearchByFigiGet figi = $figi",
    );
    return response.data!.payload;
  }

  Future<T> _delayed<T>(
    Future<T> Function() computation, {
    int minInterval = 0,
    String description = "",
  }) {
    final elapsed = DateTime.now().millisecondsSinceEpoch - _lastCall;
    final delay = max(minInterval - elapsed, 0);
    _lastCall = DateTime.now().millisecondsSinceEpoch + delay;
    return Future.delayed(
      Duration(milliseconds: delay),
      () {
        print("API CALL # ${++_totalCalls} $description");
        return computation();
      },
    );
  }
}
