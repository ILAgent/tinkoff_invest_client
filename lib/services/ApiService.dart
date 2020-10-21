import 'package:dio/dio.dart';
import 'package:tinkoff_api/api.dart';
import 'package:tinkoff_api/model/portfolio.dart';
import 'package:tinkoff_api/model/sandbox_register_request.dart';

import 'private_data.dart' as Private;

class ApiService {
  final TinkoffApi _api;

  ApiService._initApi(TinkoffApi api) : _api = api;

  factory ApiService() {
    final options = BaseOptions(
      baseUrl: "https://api-invest.tinkoff.ru/openapi/sandbox",
      connectTimeout: 5000,
      receiveTimeout: 3000,
      headers: {"Authorization": "Bearer ${Private.token}"},
    );
    final api = TinkoffApi(dio: Dio(options));
    return ApiService._initApi(api);
  }

  Future<Portfolio> portfolio() async {
    await _api
        .getSandboxApi()
        .sandboxRegisterPost(sandboxRegisterRequest: SandboxRegisterRequest());
    return (await _api.getPortfolioApi().portfolioGet()).data.payload;
  }
}
