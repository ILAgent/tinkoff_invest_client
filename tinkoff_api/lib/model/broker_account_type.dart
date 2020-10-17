part of petstore_api.api;


enum BrokerAccountType {
    tinkoff, tinkoffIis
}

class BrokerAccountTypeTypeTransformer {
  static Map<String, BrokerAccountType> fromJsonMap = {  
  "Tinkoff":BrokerAccountType.tinkoff, "TinkoffIis":BrokerAccountType.tinkoffIis
 };
  static Map<BrokerAccountType, String> toJsonMap = {  
  BrokerAccountType.tinkoff:"Tinkoff", BrokerAccountType.tinkoffIis:"TinkoffIis"
 };

  static BrokerAccountType fromJson(dynamic data) {
    var found = fromJsonMap[data];
    if (found == null) {
      throw('Unknown enum value to decode: $data');
    }
    return found;
  }

  static dynamic toJson(BrokerAccountType data) {
    return toJsonMap[data];
  }

  static List<BrokerAccountType> listFromJson(List<dynamic> json) {
    return json == null ? <BrokerAccountType>[] : json.map((value) => fromJson(value)).toList();
  }

  static BrokerAccountType copyWith(BrokerAccountType instance) {
    return instance;
  }

  static Map<String, BrokerAccountType> mapFromJson(Map<String, dynamic> json) {
    final map = <String, BrokerAccountType>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = fromJson(value));
    }
    return map;
  }
}


