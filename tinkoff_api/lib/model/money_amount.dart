part of petstore_api.api;

// MoneyAmount
class MoneyAmount {
    
        Currency currency;
    
      double value;
MoneyAmount();

  @override
  String toString() {
    return 'MoneyAmount[currency=$currency, value=$value, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'currency'];
      currency = (_jsonData == null) ? null :
        CurrencyTypeTransformer.fromJson(_jsonData);

    } // _jsonFieldName
    {
      final _jsonData = json[r'value'];
      value = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName

  }

  MoneyAmount.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (currency != null) {
          json[r'currency'] = LocalApiClient.serialize(currency);
    }
    if (value != null) {
            json[r'value'] = LocalApiClient.serialize(value);
    }
    return json;
  }
  static List<MoneyAmount> listFromJson(List<dynamic> json) {
    return json == null ? <MoneyAmount>[] : json.map((value) => MoneyAmount.fromJson(value)).toList();
  }

  static Map<String, MoneyAmount> mapFromJson(Map<String, dynamic> json) {
    final map = <String, MoneyAmount>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MoneyAmount.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is MoneyAmount && runtimeType == other.runtimeType) {
    return 
          currency == other.currency && // other
    

     value == other.value  
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    
            if (currency != null) {
              hashCode = hashCode ^ currency.hashCode;
            }
    

    if (value != null) {
      hashCode = hashCode ^ value.hashCode;
    }


    return hashCode;
  }

  MoneyAmount copyWith({
           Currency currency,
             double value,
    }) {
    MoneyAmount copy = MoneyAmount();
        copy.currency = currency ?? this.currency;
        copy.value = value ?? this.value;
    return copy;
  }
}


