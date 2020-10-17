part of petstore_api.api;

// CurrencyPosition
class CurrencyPosition {
    
        Currency currency;
    
      double balance;
    
      double blocked;
CurrencyPosition();

  @override
  String toString() {
    return 'CurrencyPosition[currency=$currency, balance=$balance, blocked=$blocked, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'currency'];
      currency = (_jsonData == null) ? null :
        CurrencyTypeTransformer.fromJson(_jsonData);

    } // _jsonFieldName
    {
      final _jsonData = json[r'balance'];
      balance = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'blocked'];
      blocked = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName

  }

  CurrencyPosition.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (currency != null) {
          json[r'currency'] = LocalApiClient.serialize(currency);
    }
    if (balance != null) {
            json[r'balance'] = LocalApiClient.serialize(balance);
    }
    if (blocked != null) {
            json[r'blocked'] = LocalApiClient.serialize(blocked);
    }
    return json;
  }
  static List<CurrencyPosition> listFromJson(List<dynamic> json) {
    return json == null ? <CurrencyPosition>[] : json.map((value) => CurrencyPosition.fromJson(value)).toList();
  }

  static Map<String, CurrencyPosition> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CurrencyPosition>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CurrencyPosition.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is CurrencyPosition && runtimeType == other.runtimeType) {
    return 
          currency == other.currency && // other
    

     balance == other.balance &&
  

     blocked == other.blocked  
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
    

    if (balance != null) {
      hashCode = hashCode ^ balance.hashCode;
    }


    if (blocked != null) {
      hashCode = hashCode ^ blocked.hashCode;
    }


    return hashCode;
  }

  CurrencyPosition copyWith({
           Currency currency,
             double balance,
             double blocked,
    }) {
    CurrencyPosition copy = CurrencyPosition();
        copy.currency = currency ?? this.currency;
        copy.balance = balance ?? this.balance;
        copy.blocked = blocked ?? this.blocked;
    return copy;
  }
}


