part of tinkoff_api.api;

// OperationTrade
class OperationTrade {
    
      String tradeId;
    /* ISO8601 */
      DateTime date;
    
      double price;
    
      int quantity;
OperationTrade();

  @override
  String toString() {
    return 'OperationTrade[tradeId=$tradeId, date=$date, price=$price, quantity=$quantity, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'tradeId'];
      tradeId = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'date'];
      date = (_jsonData == null) ? null :
        DateTime.parse(_jsonData);
    } // _jsonFieldName
    {
      final _jsonData = json[r'price'];
      price = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'quantity'];
      quantity = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName

  }

  OperationTrade.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (tradeId != null) {
            json[r'tradeId'] = LocalApiClient.serialize(tradeId);
    }
    if (date != null) {
      json[r'date'] = date.toUtc().toIso8601String();
    }
    if (price != null) {
            json[r'price'] = LocalApiClient.serialize(price);
    }
    if (quantity != null) {
            json[r'quantity'] = LocalApiClient.serialize(quantity);
    }
    return json;
  }
  static List<OperationTrade> listFromJson(List<dynamic> json) {
    return json == null ? <OperationTrade>[] : json.map((value) => OperationTrade.fromJson(value)).toList();
  }

  static Map<String, OperationTrade> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OperationTrade>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OperationTrade.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is OperationTrade && runtimeType == other.runtimeType) {
    return 

     tradeId == other.tradeId &&
  
          date == other.date && // other
    

     price == other.price &&
  

     quantity == other.quantity  
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    

    if (tradeId != null) {
      hashCode = hashCode ^ tradeId.hashCode;
    }

            if (date != null) {
              hashCode = hashCode ^ date.hashCode;
            }
    

    if (price != null) {
      hashCode = hashCode ^ price.hashCode;
    }


    if (quantity != null) {
      hashCode = hashCode ^ quantity.hashCode;
    }


    return hashCode;
  }

  OperationTrade copyWith({
             String tradeId,
           DateTime date,
             double price,
             int quantity,
    }) {
    OperationTrade copy = OperationTrade();
        copy.tradeId = tradeId ?? this.tradeId;
        copy.date = date ?? this.date;
        copy.price = price ?? this.price;
        copy.quantity = quantity ?? this.quantity;
    return copy;
  }
}


