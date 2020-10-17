part of petstore_api.api;


enum OrderType {
    limit, market
}

class OrderTypeTypeTransformer {
  static Map<String, OrderType> fromJsonMap = {  
  "Limit":OrderType.limit, "Market":OrderType.market
 };
  static Map<OrderType, String> toJsonMap = {  
  OrderType.limit:"Limit", OrderType.market:"Market"
 };

  static OrderType fromJson(dynamic data) {
    var found = fromJsonMap[data];
    if (found == null) {
      throw('Unknown enum value to decode: $data');
    }
    return found;
  }

  static dynamic toJson(OrderType data) {
    return toJsonMap[data];
  }

  static List<OrderType> listFromJson(List<dynamic> json) {
    return json == null ? <OrderType>[] : json.map((value) => fromJson(value)).toList();
  }

  static OrderType copyWith(OrderType instance) {
    return instance;
  }

  static Map<String, OrderType> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrderType>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = fromJson(value));
    }
    return map;
  }
}


