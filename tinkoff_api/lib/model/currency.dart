part of petstore_api.api;


enum Currency {
    RUB, USD, EUR, GBP, HKD, CHF, JPY, CNY, TRY_
}

class CurrencyTypeTransformer {
  static Map<String, Currency> fromJsonMap = {  
  "RUB":Currency.RUB, "USD":Currency.USD, "EUR":Currency.EUR, "GBP":Currency.GBP, "HKD":Currency.HKD, "CHF":Currency.CHF, "JPY":Currency.JPY, "CNY":Currency.CNY, "TRY":Currency.TRY_
 };
  static Map<Currency, String> toJsonMap = {  
  Currency.RUB:"RUB", Currency.USD:"USD", Currency.EUR:"EUR", Currency.GBP:"GBP", Currency.HKD:"HKD", Currency.CHF:"CHF", Currency.JPY:"JPY", Currency.CNY:"CNY", Currency.TRY_:"TRY"
 };

  static Currency fromJson(dynamic data) {
    var found = fromJsonMap[data];
    if (found == null) {
      throw('Unknown enum value to decode: $data');
    }
    return found;
  }

  static dynamic toJson(Currency data) {
    return toJsonMap[data];
  }

  static List<Currency> listFromJson(List<dynamic> json) {
    return json == null ? <Currency>[] : json.map((value) => fromJson(value)).toList();
  }

  static Currency copyWith(Currency instance) {
    return instance;
  }

  static Map<String, Currency> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Currency>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = fromJson(value));
    }
    return map;
  }
}


