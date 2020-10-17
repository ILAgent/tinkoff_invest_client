part of petstore_api.api;

// SearchMarketInstrumentResponse
class SearchMarketInstrumentResponse {
    
      String trackingId;
    
      String status = "Ok";
    
      SearchMarketInstrument payload;
SearchMarketInstrumentResponse();

  @override
  String toString() {
    return 'SearchMarketInstrumentResponse[trackingId=$trackingId, status=$status, payload=$payload, ]';
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
        
        SearchMarketInstrument.fromJson(_jsonData);
    } // _jsonFieldName

  }

  SearchMarketInstrumentResponse.fromJson(Map<String, dynamic> json) {
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
  static List<SearchMarketInstrumentResponse> listFromJson(List<dynamic> json) {
    return json == null ? <SearchMarketInstrumentResponse>[] : json.map((value) => SearchMarketInstrumentResponse.fromJson(value)).toList();
  }

  static Map<String, SearchMarketInstrumentResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SearchMarketInstrumentResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SearchMarketInstrumentResponse.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is SearchMarketInstrumentResponse && runtimeType == other.runtimeType) {
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

  SearchMarketInstrumentResponse copyWith({
             String trackingId,
             String status,
           SearchMarketInstrument payload,
    }) {
    SearchMarketInstrumentResponse copy = SearchMarketInstrumentResponse();
        copy.trackingId = trackingId ?? this.trackingId;
        copy.status = status ?? this.status;
        copy.payload = payload ?? this.payload?.copyWith();
    return copy;
  }
}


