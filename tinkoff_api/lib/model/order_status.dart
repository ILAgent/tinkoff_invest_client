part of petstore_api.api;


enum OrderStatus {
    new_, partiallyFill, fill, cancelled, replaced, pendingCancel, rejected, pendingReplace, pendingNew
}

class OrderStatusTypeTransformer {
  static Map<String, OrderStatus> fromJsonMap = {  
  "New":OrderStatus.new_, "PartiallyFill":OrderStatus.partiallyFill, "Fill":OrderStatus.fill, "Cancelled":OrderStatus.cancelled, "Replaced":OrderStatus.replaced, "PendingCancel":OrderStatus.pendingCancel, "Rejected":OrderStatus.rejected, "PendingReplace":OrderStatus.pendingReplace, "PendingNew":OrderStatus.pendingNew
 };
  static Map<OrderStatus, String> toJsonMap = {  
  OrderStatus.new_:"New", OrderStatus.partiallyFill:"PartiallyFill", OrderStatus.fill:"Fill", OrderStatus.cancelled:"Cancelled", OrderStatus.replaced:"Replaced", OrderStatus.pendingCancel:"PendingCancel", OrderStatus.rejected:"Rejected", OrderStatus.pendingReplace:"PendingReplace", OrderStatus.pendingNew:"PendingNew"
 };

  static OrderStatus fromJson(dynamic data) {
    var found = fromJsonMap[data];
    if (found == null) {
      throw('Unknown enum value to decode: $data');
    }
    return found;
  }

  static dynamic toJson(OrderStatus data) {
    return toJsonMap[data];
  }

  static List<OrderStatus> listFromJson(List<dynamic> json) {
    return json == null ? <OrderStatus>[] : json.map((value) => fromJson(value)).toList();
  }

  static OrderStatus copyWith(OrderStatus instance) {
    return instance;
  }

  static Map<String, OrderStatus> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrderStatus>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = fromJson(value));
    }
    return map;
  }
}


