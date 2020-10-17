part of tinkoff_api.api;


enum TradeStatus {
    normalTrading, notAvailableForTrading
}

class TradeStatusTypeTransformer {
  static Map<String, TradeStatus> fromJsonMap = {  
  "NormalTrading":TradeStatus.normalTrading, "NotAvailableForTrading":TradeStatus.notAvailableForTrading
 };
  static Map<TradeStatus, String> toJsonMap = {  
  TradeStatus.normalTrading:"NormalTrading", TradeStatus.notAvailableForTrading:"NotAvailableForTrading"
 };

  static TradeStatus fromJson(dynamic data) {
    var found = fromJsonMap[data];
    if (found == null) {
      throw('Unknown enum value to decode: $data');
    }
    return found;
  }

  static dynamic toJson(TradeStatus data) {
    return toJsonMap[data];
  }

  static List<TradeStatus> listFromJson(List<dynamic> json) {
    return json == null ? <TradeStatus>[] : json.map((value) => fromJson(value)).toList();
  }

  static TradeStatus copyWith(TradeStatus instance) {
    return instance;
  }

  static Map<String, TradeStatus> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TradeStatus>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = fromJson(value));
    }
    return map;
  }
}


