part of petstore_api.api;

// OperationsResponse
class OperationsResponse {
    
      String trackingId;
    
      String status = "Ok";
    
      Operations payload;
OperationsResponse();

  @override
  String toString() {
    return 'OperationsResponse[trackingId=$trackingId, status=$status, payload=$payload, ]';
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
        
        Operations.fromJson(_jsonData);
    } // _jsonFieldName

  }

  OperationsResponse.fromJson(Map<String, dynamic> json) {
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
  static List<OperationsResponse> listFromJson(List<dynamic> json) {
    return json == null ? <OperationsResponse>[] : json.map((value) => OperationsResponse.fromJson(value)).toList();
  }

  static Map<String, OperationsResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OperationsResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OperationsResponse.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is OperationsResponse && runtimeType == other.runtimeType) {
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

  OperationsResponse copyWith({
             String trackingId,
             String status,
           Operations payload,
    }) {
    OperationsResponse copy = OperationsResponse();
        copy.trackingId = trackingId ?? this.trackingId;
        copy.status = status ?? this.status;
        copy.payload = payload ?? this.payload?.copyWith();
    return copy;
  }
}


