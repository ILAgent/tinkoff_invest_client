part of petstore_api.api;

// SandboxAccount
class SandboxAccount {
    
        BrokerAccountType brokerAccountType;
    
      String brokerAccountId;
SandboxAccount();

  @override
  String toString() {
    return 'SandboxAccount[brokerAccountType=$brokerAccountType, brokerAccountId=$brokerAccountId, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'brokerAccountType'];
      brokerAccountType = (_jsonData == null) ? null :
        BrokerAccountTypeTypeTransformer.fromJson(_jsonData);

    } // _jsonFieldName
    {
      final _jsonData = json[r'brokerAccountId'];
      brokerAccountId = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName

  }

  SandboxAccount.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (brokerAccountType != null) {
          json[r'brokerAccountType'] = LocalApiClient.serialize(brokerAccountType);
    }
    if (brokerAccountId != null) {
            json[r'brokerAccountId'] = LocalApiClient.serialize(brokerAccountId);
    }
    return json;
  }
  static List<SandboxAccount> listFromJson(List<dynamic> json) {
    return json == null ? <SandboxAccount>[] : json.map((value) => SandboxAccount.fromJson(value)).toList();
  }

  static Map<String, SandboxAccount> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SandboxAccount>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SandboxAccount.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is SandboxAccount && runtimeType == other.runtimeType) {
    return 
          brokerAccountType == other.brokerAccountType && // other
    

     brokerAccountId == other.brokerAccountId  
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    
            if (brokerAccountType != null) {
              hashCode = hashCode ^ brokerAccountType.hashCode;
            }
    

    if (brokerAccountId != null) {
      hashCode = hashCode ^ brokerAccountId.hashCode;
    }


    return hashCode;
  }

  SandboxAccount copyWith({
           BrokerAccountType brokerAccountType,
             String brokerAccountId,
    }) {
    SandboxAccount copy = SandboxAccount();
        copy.brokerAccountType = brokerAccountType ?? this.brokerAccountType;
        copy.brokerAccountId = brokerAccountId ?? this.brokerAccountId;
    return copy;
  }
}


