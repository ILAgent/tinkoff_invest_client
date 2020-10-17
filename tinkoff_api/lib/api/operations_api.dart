part of petstore_api.api;


class OperationsApi {
  final OperationsApiDelegate apiDelegate;
  OperationsApi(ApiClient apiClient) : assert(apiClient != null), apiDelegate = OperationsApiDelegate(apiClient);


  /// Получение списка операций
  ///
  /// 
    Future<OperationsResponse> 
  operationsGet(DateTime from, DateTime to, {Options options, String figi, String brokerAccountId }) async {

    final response = await apiDelegate.operationsGet(from, to,  options: options, figi: figi, brokerAccountId: brokerAccountId);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.operationsGet_decode(response);
    }
  }

  /// Получение списка операций
  ///
  /// 
}


  class OperationsApiDelegate {
  final ApiClient apiClient;

OperationsApiDelegate(this.apiClient) : assert(apiClient != null);

    Future<ApiResponse>
  operationsGet(DateTime from, DateTime to, {Options options, String figi, String brokerAccountId }) async {
    Object postBody;

    // verify required params are set
        if(from == null) {
        throw ApiException(400, 'Missing required param: from');
        }
        if(to == null) {
        throw ApiException(400, 'Missing required param: to');
        }

    // create path and map variables
    final __path = '/operations';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if(headerParams['Accept'] == null) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'from', from));
      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'to', to));
        if(figi != null) {
      queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'figi', figi));
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

    Future<OperationsResponse> 
  operationsGet_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'OperationsResponse') as OperationsResponse;
    }

    return null;
    }
  }


