part of petstore_api.api;


enum InstrumentType {
    stock, currency, bond, etf
}

class InstrumentTypeTypeTransformer {
  static Map<String, InstrumentType> fromJsonMap = {  
  "Stock":InstrumentType.stock, "Currency":InstrumentType.currency, "Bond":InstrumentType.bond, "Etf":InstrumentType.etf
 };
  static Map<InstrumentType, String> toJsonMap = {  
  InstrumentType.stock:"Stock", InstrumentType.currency:"Currency", InstrumentType.bond:"Bond", InstrumentType.etf:"Etf"
 };

  static InstrumentType fromJson(dynamic data) {
    var found = fromJsonMap[data];
    if (found == null) {
      throw('Unknown enum value to decode: $data');
    }
    return found;
  }

  static dynamic toJson(InstrumentType data) {
    return toJsonMap[data];
  }

  static List<InstrumentType> listFromJson(List<dynamic> json) {
    return json == null ? <InstrumentType>[] : json.map((value) => fromJson(value)).toList();
  }

  static InstrumentType copyWith(InstrumentType instance) {
    return instance;
  }

  static Map<String, InstrumentType> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InstrumentType>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = fromJson(value));
    }
    return map;
  }
}


