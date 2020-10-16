part of petstore_api.api;

// PortfolioCurrenciesResponse
class PortfolioCurrenciesResponse {
    
      String trackingId;
    
      String status = "Ok";
    
      Currencies payload;
PortfolioCurrenciesResponse();

  @override
  String toString() {
    return 'PortfolioCurrenciesResponse[trackingId=$trackingId, status=$status, payload=$payload, ]';
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
        
        Currencies.fromJson(_jsonData);
    } // _jsonFieldName

  }

  PortfolioCurrenciesResponse.fromJson(Map<String, dynamic> json) {
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
  static List<PortfolioCurrenciesResponse> listFromJson(List<dynamic> json) {
    return json == null ? <PortfolioCurrenciesResponse>[] : json.map((value) => PortfolioCurrenciesResponse.fromJson(value)).toList();
  }

  static Map<String, PortfolioCurrenciesResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PortfolioCurrenciesResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PortfolioCurrenciesResponse.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is PortfolioCurrenciesResponse && runtimeType == other.runtimeType) {
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

  PortfolioCurrenciesResponse copyWith({
             String trackingId,
             String status,
           Currencies payload,
    }) {
    PortfolioCurrenciesResponse copy = PortfolioCurrenciesResponse();
        copy.trackingId = trackingId ?? this.trackingId;
        copy.status = status ?? this.status;
        copy.payload = payload ?? this.payload?.copyWith();
    return copy;
  }
}


