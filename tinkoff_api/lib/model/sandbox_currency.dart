part of petstore_api.api;


enum SandboxCurrency {
    RUB, USD, EUR, GBP, HKD, CHF, JPY, CNY, TRY_
}

class SandboxCurrencyTypeTransformer {
  static Map<String, SandboxCurrency> fromJsonMap = {  
  "RUB":SandboxCurrency.RUB, "USD":SandboxCurrency.USD, "EUR":SandboxCurrency.EUR, "GBP":SandboxCurrency.GBP, "HKD":SandboxCurrency.HKD, "CHF":SandboxCurrency.CHF, "JPY":SandboxCurrency.JPY, "CNY":SandboxCurrency.CNY, "TRY":SandboxCurrency.TRY_
 };
  static Map<SandboxCurrency, String> toJsonMap = {  
  SandboxCurrency.RUB:"RUB", SandboxCurrency.USD:"USD", SandboxCurrency.EUR:"EUR", SandboxCurrency.GBP:"GBP", SandboxCurrency.HKD:"HKD", SandboxCurrency.CHF:"CHF", SandboxCurrency.JPY:"JPY", SandboxCurrency.CNY:"CNY", SandboxCurrency.TRY_:"TRY"
 };

  static SandboxCurrency fromJson(dynamic data) {
    var found = fromJsonMap[data];
    if (found == null) {
      throw('Unknown enum value to decode: $data');
    }
    return found;
  }

  static dynamic toJson(SandboxCurrency data) {
    return toJsonMap[data];
  }

  static List<SandboxCurrency> listFromJson(List<dynamic> json) {
    return json == null ? <SandboxCurrency>[] : json.map((value) => fromJson(value)).toList();
  }

  static SandboxCurrency copyWith(SandboxCurrency instance) {
    return instance;
  }

  static Map<String, SandboxCurrency> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SandboxCurrency>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = fromJson(value));
    }
    return map;
  }
}


