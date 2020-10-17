part of petstore_api.api;

// SandboxSetCurrencyBalanceRequest
class SandboxSetCurrencyBalanceRequest {
    
        SandboxCurrency currency;
    
      double balance;
SandboxSetCurrencyBalanceRequest();

  @override
  String toString() {
    return 'SandboxSetCurrencyBalanceRequest[currency=$currency, balance=$balance, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'currency'];
      currency = (_jsonData == null) ? null :
        SandboxCurrencyTypeTransformer.fromJson(_jsonData);

    } // _jsonFieldName
    {
      final _jsonData = json[r'balance'];
      balance = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName

  }

  SandboxSetCurrencyBalanceRequest.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (currency != null) {
          json[r'currency'] = LocalApiClient.serialize(currency);
    }
    if (balance != null) {
            json[r'balance'] = LocalApiClient.serialize(balance);
    }
    return json;
  }
  static List<SandboxSetCurrencyBalanceRequest> listFromJson(List<dynamic> json) {
    return json == null ? <SandboxSetCurrencyBalanceRequest>[] : json.map((value) => SandboxSetCurrencyBalanceRequest.fromJson(value)).toList();
  }

  static Map<String, SandboxSetCurrencyBalanceRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SandboxSetCurrencyBalanceRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SandboxSetCurrencyBalanceRequest.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is SandboxSetCurrencyBalanceRequest && runtimeType == other.runtimeType) {
    return 
          currency == other.currency && // other
    

     balance == other.balance  
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    
            if (currency != null) {
              hashCode = hashCode ^ currency.hashCode;
            }
    

    if (balance != null) {
      hashCode = hashCode ^ balance.hashCode;
    }


    return hashCode;
  }

  SandboxSetCurrencyBalanceRequest copyWith({
           SandboxCurrency currency,
             double balance,
    }) {
    SandboxSetCurrencyBalanceRequest copy = SandboxSetCurrencyBalanceRequest();
        copy.currency = currency ?? this.currency;
        copy.balance = balance ?? this.balance;
    return copy;
  }
}


