part of tinkoff_api.api;


enum CandleResolution {
    n1min, n2min, n3min, n5min, n10min, n15min, n30min, hour, day, week, month
}

class CandleResolutionTypeTransformer {
  static Map<String, CandleResolution> fromJsonMap = {  
  "1min":CandleResolution.n1min, "2min":CandleResolution.n2min, "3min":CandleResolution.n3min, "5min":CandleResolution.n5min, "10min":CandleResolution.n10min, "15min":CandleResolution.n15min, "30min":CandleResolution.n30min, "hour":CandleResolution.hour, "day":CandleResolution.day, "week":CandleResolution.week, "month":CandleResolution.month
 };
  static Map<CandleResolution, String> toJsonMap = {  
  CandleResolution.n1min:"1min", CandleResolution.n2min:"2min", CandleResolution.n3min:"3min", CandleResolution.n5min:"5min", CandleResolution.n10min:"10min", CandleResolution.n15min:"15min", CandleResolution.n30min:"30min", CandleResolution.hour:"hour", CandleResolution.day:"day", CandleResolution.week:"week", CandleResolution.month:"month"
 };

  static CandleResolution fromJson(dynamic data) {
    var found = fromJsonMap[data];
    if (found == null) {
      throw('Unknown enum value to decode: $data');
    }
    return found;
  }

  static dynamic toJson(CandleResolution data) {
    return toJsonMap[data];
  }

  static List<CandleResolution> listFromJson(List<dynamic> json) {
    return json == null ? <CandleResolution>[] : json.map((value) => fromJson(value)).toList();
  }

  static CandleResolution copyWith(CandleResolution instance) {
    return instance;
  }

  static Map<String, CandleResolution> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CandleResolution>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = fromJson(value));
    }
    return map;
  }
}


