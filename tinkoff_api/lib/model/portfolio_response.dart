part of petstore_api.api;

// PortfolioResponse
class PortfolioResponse {
    
      String trackingId;
    
      String status = "Ok";
    
      Portfolio payload;
PortfolioResponse();

  @override
  String toString() {
    return 'PortfolioResponse[trackingId=$trackingId, status=$status, payload=$payload, ]';
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
        
        Portfolio.fromJson(_jsonData);
    } // _jsonFieldName

  }

  PortfolioResponse.fromJson(Map<String, dynamic> json) {
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
  static List<PortfolioResponse> listFromJson(List<dynamic> json) {
    return json == null ? <PortfolioResponse>[] : json.map((value) => PortfolioResponse.fromJson(value)).toList();
  }

  static Map<String, PortfolioResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PortfolioResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PortfolioResponse.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is PortfolioResponse && runtimeType == other.runtimeType) {
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

  PortfolioResponse copyWith({
             String trackingId,
             String status,
           Portfolio payload,
    }) {
    PortfolioResponse copy = PortfolioResponse();
        copy.trackingId = trackingId ?? this.trackingId;
        copy.status = status ?? this.status;
        copy.payload = payload ?? this.payload?.copyWith();
    return copy;
  }
}


