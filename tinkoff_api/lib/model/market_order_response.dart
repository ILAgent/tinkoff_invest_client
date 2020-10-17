part of petstore_api.api;

// MarketOrderResponse
class MarketOrderResponse {
    
      String trackingId;
    
      String status = "Ok";
    
      PlacedMarketOrder payload;
MarketOrderResponse();

  @override
  String toString() {
    return 'MarketOrderResponse[trackingId=$trackingId, status=$status, payload=$payload, ]';
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
        
        PlacedMarketOrder.fromJson(_jsonData);
    } // _jsonFieldName

  }

  MarketOrderResponse.fromJson(Map<String, dynamic> json) {
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
  static List<MarketOrderResponse> listFromJson(List<dynamic> json) {
    return json == null ? <MarketOrderResponse>[] : json.map((value) => MarketOrderResponse.fromJson(value)).toList();
  }

  static Map<String, MarketOrderResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, MarketOrderResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MarketOrderResponse.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is MarketOrderResponse && runtimeType == other.runtimeType) {
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

  MarketOrderResponse copyWith({
             String trackingId,
             String status,
           PlacedMarketOrder payload,
    }) {
    MarketOrderResponse copy = MarketOrderResponse();
        copy.trackingId = trackingId ?? this.trackingId;
        copy.status = status ?? this.status;
        copy.payload = payload ?? this.payload?.copyWith();
    return copy;
  }
}


