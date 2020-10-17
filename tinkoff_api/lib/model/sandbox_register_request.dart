part of petstore_api.api;

// SandboxRegisterRequest
class SandboxRegisterRequest {
    
        BrokerAccountType brokerAccountType;
SandboxRegisterRequest();

  @override
  String toString() {
    return 'SandboxRegisterRequest[brokerAccountType=$brokerAccountType, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'brokerAccountType'];
      brokerAccountType = (_jsonData == null) ? null :
        BrokerAccountTypeTypeTransformer.fromJson(_jsonData);

    } // _jsonFieldName

  }

  SandboxRegisterRequest.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (brokerAccountType != null) {
          json[r'brokerAccountType'] = LocalApiClient.serialize(brokerAccountType);
    }
    return json;
  }
  static List<SandboxRegisterRequest> listFromJson(List<dynamic> json) {
    return json == null ? <SandboxRegisterRequest>[] : json.map((value) => SandboxRegisterRequest.fromJson(value)).toList();
  }

  static Map<String, SandboxRegisterRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SandboxRegisterRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SandboxRegisterRequest.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is SandboxRegisterRequest && runtimeType == other.runtimeType) {
    return 
          brokerAccountType == other.brokerAccountType    
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
    

    return hashCode;
  }

  SandboxRegisterRequest copyWith({
           BrokerAccountType brokerAccountType,
    }) {
    SandboxRegisterRequest copy = SandboxRegisterRequest();
        copy.brokerAccountType = brokerAccountType ?? this.brokerAccountType;
    return copy;
  }
}


