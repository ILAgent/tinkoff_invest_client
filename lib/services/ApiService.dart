import 'package:openapi_dart_common/openapi.dart';
import 'package:tinkoff_api/api.dart';

import 'private_data.dart' as Private;

class ApiService {
  final _client =
      ApiClient(basePath: "https://api-invest.tinkoff.ru/openapi/sandbox");

  ApiService() {
    _client.setDefaultHeader("bearer", Private.token);
    _client.setAuthentication("sso_auth", OAuth(accessToken: Private.token));
  }

  Future<Portfolio> portfolio() async {
    await SandboxApi(_client).sandboxRegisterPost();
    final portfolio = await PortfolioApi(_client).portfolioGet();
    return portfolio.payload;
  }
}
