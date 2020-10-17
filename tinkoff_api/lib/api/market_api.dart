part of petstore_api.api;


class MarketApi {
  final MarketApiDelegate apiDelegate;
  MarketApi(ApiClient apiClient) : assert(apiClient != null), apiDelegate = MarketApiDelegate(apiClient);


  /// Получение списка облигаций
  ///
  /// 
    Future<MarketInstrumentListResponse> 
  marketBondsGet({Options options}) async {

    final response = await apiDelegate.marketBondsGet( options: options, );

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.marketBondsGet_decode(response);
    }
  }

  /// Получение списка облигаций
  ///
  /// 
  /// Получение исторических свечей по FIGI
  ///
  /// 
    Future<CandlesResponse> 
  marketCandlesGet(String figi, DateTime from, DateTime to, CandleResolution interval, {Options options}) async {

    final response = await apiDelegate.marketCandlesGet(figi, from, to, interval,  options: options, );

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.marketCandlesGet_decode(response);
    }
  }

  /// Получение исторических свечей по FIGI
  ///
  /// 
  /// Получение списка валютных пар
  ///
  /// 
    Future<MarketInstrumentListResponse> 
  marketCurrenciesGet({Options options}) async {

    final response = await apiDelegate.marketCurrenciesGet( options: options, );

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.marketCurrenciesGet_decode(response);
    }
  }

  /// Получение списка валютных пар
  ///
  /// 
  /// Получение списка ETF
  ///
  /// 
    Future<MarketInstrumentListResponse> 
  marketEtfsGet({Options options}) async {

    final response = await apiDelegate.marketEtfsGet( options: options, );

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.marketEtfsGet_decode(response);
    }
  }

  /// Получение списка ETF
  ///
  /// 
  /// Получение стакана по FIGI
  ///
  /// 
    Future<OrderbookResponse> 
  marketOrderbookGet(String figi, int depth, {Options options}) async {

    final response = await apiDelegate.marketOrderbookGet(figi, depth,  options: options, );

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.marketOrderbookGet_decode(response);
    }
  }

  /// Получение стакана по FIGI
  ///
  /// 
  /// Получение инструмента по FIGI
  ///
  /// 
    Future<SearchMarketInstrumentResponse> 
  marketSearchByFigiGet(String figi, {Options options}) async {

    final response = await apiDelegate.marketSearchByFigiGet(figi,  options: options, );

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.marketSearchByFigiGet_decode(response);
    }
  }

  /// Получение инструмента по FIGI
  ///
  /// 
  /// Получение инструмента по тикеру
  ///
  /// 
    Future<MarketInstrumentListResponse> 
  marketSearchByTickerGet(String ticker, {Options options}) async {

    final response = await apiDelegate.marketSearchByTickerGet(ticker,  options: options, );

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.marketSearchByTickerGet_decode(response);
    }
  }

  /// Получение инструмента по тикеру
  ///
  /// 
  /// Получение списка акций
  ///
  /// 
    Future<MarketInstrumentListResponse> 
  marketStocksGet({Options options}) async {

    final response = await apiDelegate.marketStocksGet( options: options, );

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.marketStocksGet_decode(response);
    }
  }

  /// Получение списка акций
  ///
  /// 
}


  class MarketApiDelegate {
  final ApiClient apiClient;

MarketApiDelegate(this.apiClient) : assert(apiClient != null);

    Future<ApiResponse>
  marketBondsGet({Options options}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    final __path = '/market/bonds';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if(headerParams['Accept'] == null) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
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

    Future<MarketInstrumentListResponse> 
  marketBondsGet_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'MarketInstrumentListResponse') as MarketInstrumentListResponse;
    }

    return null;
    }
    Future<ApiResponse>
  marketCandlesGet(String figi, DateTime from, DateTime to, CandleResolution interval, {Options options}) async {
    Object postBody;

    // verify required params are set
        if(figi == null) {
        throw ApiException(400, 'Missing required param: figi');
        }
        if(from == null) {
        throw ApiException(400, 'Missing required param: from');
        }
        if(to == null) {
        throw ApiException(400, 'Missing required param: to');
        }
        if(interval == null) {
        throw ApiException(400, 'Missing required param: interval');
        }

    // create path and map variables
    final __path = '/market/candles';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if(headerParams['Accept'] == null) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'figi', figi));
      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'from', from));
      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'to', to));
      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'interval', interval));

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

    Future<CandlesResponse> 
  marketCandlesGet_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'CandlesResponse') as CandlesResponse;
    }

    return null;
    }
    Future<ApiResponse>
  marketCurrenciesGet({Options options}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    final __path = '/market/currencies';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if(headerParams['Accept'] == null) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
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

    Future<MarketInstrumentListResponse> 
  marketCurrenciesGet_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'MarketInstrumentListResponse') as MarketInstrumentListResponse;
    }

    return null;
    }
    Future<ApiResponse>
  marketEtfsGet({Options options}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    final __path = '/market/etfs';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if(headerParams['Accept'] == null) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
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

    Future<MarketInstrumentListResponse> 
  marketEtfsGet_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'MarketInstrumentListResponse') as MarketInstrumentListResponse;
    }

    return null;
    }
    Future<ApiResponse>
  marketOrderbookGet(String figi, int depth, {Options options}) async {
    Object postBody;

    // verify required params are set
        if(figi == null) {
        throw ApiException(400, 'Missing required param: figi');
        }
        if(depth == null) {
        throw ApiException(400, 'Missing required param: depth');
        }

    // create path and map variables
    final __path = '/market/orderbook';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if(headerParams['Accept'] == null) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'figi', figi));
      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'depth', depth));

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

    Future<OrderbookResponse> 
  marketOrderbookGet_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'OrderbookResponse') as OrderbookResponse;
    }

    return null;
    }
    Future<ApiResponse>
  marketSearchByFigiGet(String figi, {Options options}) async {
    Object postBody;

    // verify required params are set
        if(figi == null) {
        throw ApiException(400, 'Missing required param: figi');
        }

    // create path and map variables
    final __path = '/market/search/by-figi';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if(headerParams['Accept'] == null) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'figi', figi));

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

    Future<SearchMarketInstrumentResponse> 
  marketSearchByFigiGet_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'SearchMarketInstrumentResponse') as SearchMarketInstrumentResponse;
    }

    return null;
    }
    Future<ApiResponse>
  marketSearchByTickerGet(String ticker, {Options options}) async {
    Object postBody;

    // verify required params are set
        if(ticker == null) {
        throw ApiException(400, 'Missing required param: ticker');
        }

    // create path and map variables
    final __path = '/market/search/by-ticker';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if(headerParams['Accept'] == null) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'ticker', ticker));

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

    Future<MarketInstrumentListResponse> 
  marketSearchByTickerGet_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'MarketInstrumentListResponse') as MarketInstrumentListResponse;
    }

    return null;
    }
    Future<ApiResponse>
  marketStocksGet({Options options}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    final __path = '/market/stocks';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if(headerParams['Accept'] == null) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
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

    Future<MarketInstrumentListResponse> 
  marketStocksGet_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'MarketInstrumentListResponse') as MarketInstrumentListResponse;
    }

    return null;
    }
  }


