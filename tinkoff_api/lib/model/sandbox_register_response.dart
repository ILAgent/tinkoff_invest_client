part of petstore_api.api;

// SandboxRegisterResponse
class SandboxRegisterResponse {
    
      String trackingId;
    
      String status = "Ok";
    
      SandboxAccount payload;
SandboxRegisterResponse();

  @override
  String toString() {
    return 'SandboxRegisterResponse[trackingId=$trackingId, status=$status, payload=$payload, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'trackingId'];
      trackingId = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'status'];
      status = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'payload'];
      payload = (_jsonData == null) ? null :
        
        SandboxAccount.fromJson(_jsonData);
    } // _jsonFieldName

  }

  SandboxRegisterResponse.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (trackingId != null) {
            json[r'trackingId'] = LocalApiClient.serialize(trackingId);
    }
    if (status != null) {
            json[r'status'] = LocalApiClient.serialize(status);
    }
    if (payload != null) {
          json[r'payload'] = LocalApiClient.serialize(payload);
    }
    return json;
  }
  static List<SandboxRegisterResponse> listFromJson(List<dynamic> json) {
    return json == null ? <SandboxRegisterResponse>[] : json.map((value) => SandboxRegisterResponse.fromJson(value)).toList();
  }

  static Map<String, SandboxRegisterResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SandboxRegisterResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SandboxRegisterResponse.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is SandboxRegisterResponse && runtimeType == other.runtimeType) {
    return 

     trackingId == other.trackingId &&
  

     status == other.status &&
  
          payload == other.payload    
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    

    if (trackingId != null) {
      hashCode = hashCode ^ trackingId.hashCode;
    }


    if (status != null) {
      hashCode = hashCode ^ status.hashCode;
    }

            if (payload != null) {
              hashCode = hashCode ^ payload.hashCode;
            }
    

    return hashCode;
  }

  SandboxRegisterResponse copyWith({
             String trackingId,
             String status,
           SandboxAccount payload,
    }) {
    SandboxRegisterResponse copy = SandboxRegisterResponse();
        copy.trackingId = trackingId ?? this.trackingId;
        copy.status = status ?? this.status;
        copy.payload = payload ?? this.payload?.copyWith();
    return copy;
  }
}


