part of petstore_api.api;

// Currencies
class Currencies {
    
      List<CurrencyPosition> currencies = [];
Currencies();

  @override
  String toString() {
    return 'Currencies[currencies=$currencies, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'currencies'];
      currencies = (_jsonData == null) ? null :
            CurrencyPosition.listFromJson(_jsonData);
    } // _jsonFieldName

  }

  Currencies.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (currencies != null) {
          json[r'currencies'] = LocalApiClient.serialize(currencies);
    }
    return json;
  }
  static List<Currencies> listFromJson(List<dynamic> json) {
    return json == null ? <Currencies>[] : json.map((value) => Currencies.fromJson(value)).toList();
  }

  static Map<String, Currencies> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Currencies>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Currencies.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is Currencies && runtimeType == other.runtimeType) {
    return 
        const ListEquality().equals(currencies, other.currencies)    
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    
        hashCode = hashCode ^ const ListEquality().hash(currencies);
    

    return hashCode;
  }

  Currencies copyWith({
           List<CurrencyPosition> currencies,
    }) {
    Currencies copy = Currencies();
        {
        var newVal;
        final v = currencies ?? this.currencies;
          newVal = <CurrencyPosition>        []..addAll((v ?? []).map((y) => y.copyWith()).toList())
;
        copy.currencies = newVal;
        }
    return copy;
  }
}


