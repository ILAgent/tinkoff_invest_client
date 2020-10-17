part of petstore_api.api;


class UserApi {
  final UserApiDelegate apiDelegate;
  UserApi(ApiClient apiClient) : assert(apiClient != null), apiDelegate = UserApiDelegate(apiClient);


  /// Получение брокерских счетов клиента
  ///
  /// 
    Future<UserAccountsResponse> 
  userAccountsGet({Options options}) async {

    final response = await apiDelegate.userAccountsGet( options: options, );

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await apiDelegate.userAccountsGet_decode(response);
    }
  }

  /// Получение брокерских счетов клиента
  ///
  /// 
}


  class UserApiDelegate {
  final ApiClient apiClient;

UserApiDelegate(this.apiClient) : assert(apiClient != null);

    Future<ApiResponse>
  userAccountsGet({Options options}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    final __path = '/user/accounts';

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

    Future<UserAccountsResponse> 
  userAccountsGet_decode(ApiResponse response) async {
    if(response.body != null) {
            return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'UserAccountsResponse') as UserAccountsResponse;
    }

    return null;
    }
  }


