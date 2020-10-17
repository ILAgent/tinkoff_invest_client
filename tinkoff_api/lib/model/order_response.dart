part of tinkoff_api.api;

// OrderResponse
class OrderResponse {
    
      double price;
    
      int quantity;
OrderResponse();

  @override
  String toString() {
    return 'OrderResponse[price=$price, quantity=$quantity, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'price'];
      price = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'quantity'];
      quantity = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName

  }

  OrderResponse.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (price != null) {
            json[r'price'] = LocalApiClient.serialize(price);
    }
    if (quantity != null) {
            json[r'quantity'] = LocalApiClient.serialize(quantity);
    }
    return json;
  }
  static List<OrderResponse> listFromJson(List<dynamic> json) {
    return json == null ? <OrderResponse>[] : json.map((value) => OrderResponse.fromJson(value)).toList();
  }

  static Map<String, OrderResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrderResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OrderResponse.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is OrderResponse && runtimeType == other.runtimeType) {
    return 

     price == other.price &&
  

     quantity == other.quantity  
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    

    if (price != null) {
      hashCode = hashCode ^ price.hashCode;
    }


    if (quantity != null) {
      hashCode = hashCode ^ quantity.hashCode;
    }


    return hashCode;
  }

  OrderResponse copyWith({
             double price,
             int quantity,
    }) {
    OrderResponse copy = OrderResponse();
        copy.price = price ?? this.price;
        copy.quantity = quantity ?? this.quantity;
    return copy;
  }
}


