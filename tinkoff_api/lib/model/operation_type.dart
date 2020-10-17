part of petstore_api.api;


enum OperationType {
    buy, sell
}

class OperationTypeTypeTransformer {
  static Map<String, OperationType> fromJsonMap = {  
  "Buy":OperationType.buy, "Sell":OperationType.sell
 };
  static Map<OperationType, String> toJsonMap = {  
  OperationType.buy:"Buy", OperationType.sell:"Sell"
 };

  static OperationType fromJson(dynamic data) {
    var found = fromJsonMap[data];
    if (found == null) {
      throw('Unknown enum value to decode: $data');
    }
    return found;
  }

  static dynamic toJson(OperationType data) {
    return toJsonMap[data];
  }

  static List<OperationType> listFromJson(List<dynamic> json) {
    return json == null ? <OperationType>[] : json.map((value) => fromJson(value)).toList();
  }

  static OperationType copyWith(OperationType instance) {
    return instance;
  }

  static Map<String, OperationType> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OperationType>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = fromJson(value));
    }
    return map;
  }
}


