part of petstore_api.api;

// OrdersResponse
class OrdersResponse {
    
      String trackingId;
    
      String status = "Ok";
    
      List<Order> payload = [];
OrdersResponse();

  @override
  String toString() {
    return 'OrdersResponse[trackingId=$trackingId, status=$status, payload=$payload, ]';
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
            Order.listFromJson(_jsonData);
    } // _jsonFieldName

  }

  OrdersResponse.fromJson(Map<String, dynamic> json) {
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
  static List<OrdersResponse> listFromJson(List<dynamic> json) {
    return json == null ? <OrdersResponse>[] : json.map((value) => OrdersResponse.fromJson(value)).toList();
  }

  static Map<String, OrdersResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrdersResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OrdersResponse.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is OrdersResponse && runtimeType == other.runtimeType) {
    return 

     trackingId == other.trackingId &&
  

     status == other.status &&
  
        const ListEquality().equals(payload, other.payload)    
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

        hashCode = hashCode ^ const ListEquality().hash(payload);
    

    return hashCode;
  }

  OrdersResponse copyWith({
             String trackingId,
             String status,
           List<Order> payload,
    }) {
    OrdersResponse copy = OrdersResponse();
        copy.trackingId = trackingId ?? this.trackingId;
        copy.status = status ?? this.status;
        {
        var newVal;
        final v = payload ?? this.payload;
          newVal = <Order>        []..addAll((v ?? []).map((y) => y.copyWith()).toList())
;
        copy.payload = newVal;
        }
    return copy;
  }
}


