part of petstore_api.api;


class OrdersApi {
  final OrdersApiDelegate apiDelegate;
  OrdersApi(ApiClient apiClient) : assert(apiClient != null), apiDelegate = OrdersApiDelegate(apiClient);


  /// Отмена заявки
  ///
  /// 
    Future<Empty> 
  ordersCancelPost(String orderId, {Options options, String brokerAccountId }) async {

    final response = await apiDelegate.ordersCancelPost(orderId,  options: options, brokerAccountId: brokerAccountId);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.ordersCancelPost_decode(response);
    }
  }

  /// Отмена заявки
  ///
  /// 
  /// Получение списка активных заявок
  ///
  /// 
    Future<OrdersResponse> 
  ordersGet({Options options, String brokerAccountId }) async {

    final response = await apiDelegate.ordersGet( options: options, brokerAccountId: brokerAccountId);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.ordersGet_decode(response);
    }
  }

  /// Получение списка активных заявок
  ///
  /// 
  /// Создание лимитной заявки
  ///
  /// 
    Future<LimitOrderResponse> 
  ordersLimitOrderPost(String figi, LimitOrderRequest limitOrderRequest, {Options options, String brokerAccountId }) async {

    final response = await apiDelegate.ordersLimitOrderPost(figi, limitOrderRequest,  options: options, brokerAccountId: brokerAccountId);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.ordersLimitOrderPost_decode(response);
    }
  }

  /// Создание лимитной заявки
  ///
  /// 
  /// Создание рыночной заявки
  ///
  /// 
    Future<MarketOrderResponse> 
  ordersMarketOrderPost(String figi, MarketOrderRequest marketOrderRequest, {Options options, String brokerAccountId }) async {

    final response = await apiDelegate.ordersMarketOrderPost(figi, marketOrderRequest,  options: options, brokerAccountId: brokerAccountId);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.ordersMarketOrderPost_decode(response);
    }
  }

  /// Создание рыночной заявки
  ///
  /// 
}


  class OrdersApiDelegate {
  final ApiClient apiClient;

OrdersApiDelegate(this.apiClient) : assert(apiClient != null);

    Future<ApiResponse>
  ordersCancelPost(String orderId, {Options options, String brokerAccountId }) async {
    Object postBody;

    // verify required params are set
        if(orderId == null) {
        throw ApiException(400, 'Missing required param: orderId');
        }

    // create path and map variables
    final __path = '/orders/cancel';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if(headerParams['Accept'] == null) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'orderId', orderId));
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
    opt.method = 'POST';

    return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
    }

    Future<Empty> 
  ordersCancelPost_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'Empty') as Empty;
    }

    return null;
    }
    Future<ApiResponse>
  ordersGet({Options options, String brokerAccountId }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    final __path = '/orders';

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

    Future<OrdersResponse> 
  ordersGet_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'OrdersResponse') as OrdersResponse;
    }

    return null;
    }
    Future<ApiResponse>
  ordersLimitOrderPost(String figi, LimitOrderRequest limitOrderRequest, {Options options, String brokerAccountId }) async {
    Object postBody = limitOrderRequest;

    // verify required params are set
        if(figi == null) {
        throw ApiException(400, 'Missing required param: figi');
        }
        if(limitOrderRequest == null) {
        throw ApiException(400, 'Missing required param: limitOrderRequest');
        }

    // create path and map variables
    final __path = '/orders/limit-order';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if(headerParams['Accept'] == null) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'figi', figi));
        if(brokerAccountId != null) {
      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'brokerAccountId', brokerAccountId));
        }

    final authNames = <String>['sso_auth'];
    final opt = options ?? Options();

      final contentTypes = ['application/json'];

      if (contentTypes.isNotEmpty && headerParams['Content-Type'] == null) {
      headerParams['Content-Type'] = contentTypes[0];
      }
      if (postBody != null) {
      postBody = LocalApiClient.serialize(postBody);
      }

    opt.headers = headerParams;
    opt.method = 'POST';

    return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
    }

    Future<LimitOrderResponse> 
  ordersLimitOrderPost_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'LimitOrderResponse') as LimitOrderResponse;
    }

    return null;
    }
    Future<ApiResponse>
  ordersMarketOrderPost(String figi, MarketOrderRequest marketOrderRequest, {Options options, String brokerAccountId }) async {
    Object postBody = marketOrderRequest;

    // verify required params are set
        if(figi == null) {
        throw ApiException(400, 'Missing required param: figi');
        }
        if(marketOrderRequest == null) {
        throw ApiException(400, 'Missing required param: marketOrderRequest');
        }

    // create path and map variables
    final __path = '/orders/market-order';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if(headerParams['Accept'] == null) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'figi', figi));
        if(brokerAccountId != null) {
      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'brokerAccountId', brokerAccountId));
        }

    final authNames = <String>['sso_auth'];
    final opt = options ?? Options();

      final contentTypes = ['application/json'];

      if (contentTypes.isNotEmpty && headerParams['Content-Type'] == null) {
      headerParams['Content-Type'] = contentTypes[0];
      }
      if (postBody != null) {
      postBody = LocalApiClient.serialize(postBody);
      }

    opt.headers = headerParams;
    opt.method = 'POST';

    return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
    }

    Future<MarketOrderResponse> 
  ordersMarketOrderPost_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'MarketOrderResponse') as MarketOrderResponse;
    }

    return null;
    }
  }


