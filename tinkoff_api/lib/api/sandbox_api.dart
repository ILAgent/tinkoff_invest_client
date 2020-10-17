part of tinkoff_api.api;


class SandboxApi {
  final SandboxApiDelegate apiDelegate;
  SandboxApi(ApiClient apiClient) : assert(apiClient != null), apiDelegate = SandboxApiDelegate(apiClient);


  /// Удаление всех позиций
  ///
  /// Удаление всех позиций клиента
    Future<Empty> 
  sandboxClearPost({Options options, String brokerAccountId }) async {

    final response = await apiDelegate.sandboxClearPost( options: options, brokerAccountId: brokerAccountId);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.sandboxClearPost_decode(response);
    }
  }

  /// Удаление всех позиций
  ///
  /// Удаление всех позиций клиента
  /// Выставление баланса по валютным позициям
  ///
  /// 
    Future<Empty> 
  sandboxCurrenciesBalancePost(SandboxSetCurrencyBalanceRequest sandboxSetCurrencyBalanceRequest, {Options options, String brokerAccountId }) async {

    final response = await apiDelegate.sandboxCurrenciesBalancePost(sandboxSetCurrencyBalanceRequest,  options: options, brokerAccountId: brokerAccountId);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.sandboxCurrenciesBalancePost_decode(response);
    }
  }

  /// Выставление баланса по валютным позициям
  ///
  /// 
  /// Выставление баланса по инструментным позициям
  ///
  /// 
    Future<Empty> 
  sandboxPositionsBalancePost(SandboxSetPositionBalanceRequest sandboxSetPositionBalanceRequest, {Options options, String brokerAccountId }) async {

    final response = await apiDelegate.sandboxPositionsBalancePost(sandboxSetPositionBalanceRequest,  options: options, brokerAccountId: brokerAccountId);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.sandboxPositionsBalancePost_decode(response);
    }
  }

  /// Выставление баланса по инструментным позициям
  ///
  /// 
  /// Регистрация клиента в sandbox
  ///
  /// Создание счета и валютных позиций для клиента
    Future<SandboxRegisterResponse> 
  sandboxRegisterPost({Options options, SandboxRegisterRequest sandboxRegisterRequest }) async {

    final response = await apiDelegate.sandboxRegisterPost( options: options, sandboxRegisterRequest: sandboxRegisterRequest);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.sandboxRegisterPost_decode(response);
    }
  }

  /// Регистрация клиента в sandbox
  ///
  /// Создание счета и валютных позиций для клиента
  /// Удаление счета
  ///
  /// Удаление счета клиента
    Future<Empty> 
  sandboxRemovePost({Options options, String brokerAccountId }) async {

    final response = await apiDelegate.sandboxRemovePost( options: options, brokerAccountId: brokerAccountId);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.sandboxRemovePost_decode(response);
    }
  }

  /// Удаление счета
  ///
  /// Удаление счета клиента
}


  class SandboxApiDelegate {
  final ApiClient apiClient;

SandboxApiDelegate(this.apiClient) : assert(apiClient != null);

    Future<ApiResponse>
  sandboxClearPost({Options options, String brokerAccountId }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    final __path = '/sandbox/clear';

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
    opt.method = 'POST';

    return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
    }

    Future<Empty> 
  sandboxClearPost_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'Empty') as Empty;
    }

    return null;
    }
    Future<ApiResponse>
  sandboxCurrenciesBalancePost(SandboxSetCurrencyBalanceRequest sandboxSetCurrencyBalanceRequest, {Options options, String brokerAccountId }) async {
    Object postBody = sandboxSetCurrencyBalanceRequest;

    // verify required params are set
        if(sandboxSetCurrencyBalanceRequest == null) {
        throw ApiException(400, 'Missing required param: sandboxSetCurrencyBalanceRequest');
        }

    // create path and map variables
    final __path = '/sandbox/currencies/balance';

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

    Future<Empty> 
  sandboxCurrenciesBalancePost_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'Empty') as Empty;
    }

    return null;
    }
    Future<ApiResponse>
  sandboxPositionsBalancePost(SandboxSetPositionBalanceRequest sandboxSetPositionBalanceRequest, {Options options, String brokerAccountId }) async {
    Object postBody = sandboxSetPositionBalanceRequest;

    // verify required params are set
        if(sandboxSetPositionBalanceRequest == null) {
        throw ApiException(400, 'Missing required param: sandboxSetPositionBalanceRequest');
        }

    // create path and map variables
    final __path = '/sandbox/positions/balance';

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

    Future<Empty> 
  sandboxPositionsBalancePost_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'Empty') as Empty;
    }

    return null;
    }
    Future<ApiResponse>
  sandboxRegisterPost({Options options, SandboxRegisterRequest sandboxRegisterRequest }) async {
    Object postBody = sandboxRegisterRequest;

    // verify required params are set

    // create path and map variables
    final __path = '/sandbox/register';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if(headerParams['Accept'] == null) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
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

    Future<SandboxRegisterResponse> 
  sandboxRegisterPost_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'SandboxRegisterResponse') as SandboxRegisterResponse;
    }

    return null;
    }
    Future<ApiResponse>
  sandboxRemovePost({Options options, String brokerAccountId }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    final __path = '/sandbox/remove';

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
    opt.method = 'POST';

    return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
    }

    Future<Empty> 
  sandboxRemovePost_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'Empty') as Empty;
    }

    return null;
    }
  }


