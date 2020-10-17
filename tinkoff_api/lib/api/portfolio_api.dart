part of tinkoff_api.api;


class PortfolioApi {
  final PortfolioApiDelegate apiDelegate;
  PortfolioApi(ApiClient apiClient) : assert(apiClient != null), apiDelegate = PortfolioApiDelegate(apiClient);


  /// Получение валютных активов клиента
  ///
  /// 
    Future<PortfolioCurrenciesResponse> 
  portfolioCurrenciesGet({Options options, String brokerAccountId }) async {

    final response = await apiDelegate.portfolioCurrenciesGet( options: options, brokerAccountId: brokerAccountId);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.portfolioCurrenciesGet_decode(response);
    }
  }

  /// Получение валютных активов клиента
  ///
  /// 
  /// Получение портфеля клиента
  ///
  /// 
    Future<PortfolioResponse> 
  portfolioGet({Options options, String brokerAccountId }) async {

    final response = await apiDelegate.portfolioGet( options: options, brokerAccountId: brokerAccountId);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.portfolioGet_decode(response);
    }
  }

  /// Получение портфеля клиента
  ///
  /// 
}


  class PortfolioApiDelegate {
  final ApiClient apiClient;

PortfolioApiDelegate(this.apiClient) : assert(apiClient != null);

    Future<ApiResponse>
  portfolioCurrenciesGet({Options options, String brokerAccountId }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    final __path = '/portfolio/currencies';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if(headerParams['Accept'] == null) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

        if(brokerAccountId != null) {
      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'brokerAccountId', brokerAccountId));
        }

    final authNames = <String>['sso_auth'];
    final opt = options ?? Options();

      final contentTypes = [];

      if (contentTypes.isNotEmpty && headerParams['Content-Type'] == null) {
      headerParams['Content-Type'] = contentTypes[0];
      }
      if (postBody != null) {
      postBody = LocalApiClient.serialize(postBody);
      }

    opt.headers = headerParams;
    opt.method = 'GET';

    return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
    }

    Future<PortfolioCurrenciesResponse> 
  portfolioCurrenciesGet_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'PortfolioCurrenciesResponse') as PortfolioCurrenciesResponse;
    }

    return null;
    }
    Future<ApiResponse>
  portfolioGet({Options options, String brokerAccountId }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    final __path = '/portfolio';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if(headerParams['Accept'] == null) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

        if(brokerAccountId != null) {
      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'brokerAccountId', brokerAccountId));
        }

    final authNames = <String>['sso_auth'];
    final opt = options ?? Options();

      final contentTypes = [];

      if (contentTypes.isNotEmpty && headerParams['Content-Type'] == null) {
      headerParams['Content-Type'] = contentTypes[0];
      }
      if (postBody != null) {
      postBody = LocalApiClient.serialize(postBody);
      }

    opt.headers = headerParams;
    opt.method = 'GET';

    return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
    }

    Future<PortfolioResponse> 
  portfolioGet_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'PortfolioResponse') as PortfolioResponse;
    }

    return null;
    }
  }


