part of tinkoff_api.api;

// LimitOrderRequest
class LimitOrderRequest {
    
      int lots;
    
        OperationType operation;
    
      double price;
LimitOrderRequest();

  @override
  String toString() {
    return 'LimitOrderRequest[lots=$lots, operation=$operation, price=$price, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'lots'];
      lots = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'operation'];
      operation = (_jsonData == null) ? null :
        OperationTypeTypeTransformer.fromJson(_jsonData);

    } // _jsonFieldName
    {
      final _jsonData = json[r'price'];
      price = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName

  }

  LimitOrderRequest.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (lots != null) {
            json[r'lots'] = LocalApiClient.serialize(lots);
    }
    if (operation != null) {
          json[r'operation'] = LocalApiClient.serialize(operation);
    }
    if (price != null) {
            json[r'price'] = LocalApiClient.serialize(price);
    }
    return json;
  }
  static List<LimitOrderRequest> listFromJson(List<dynamic> json) {
    return json == null ? <LimitOrderRequest>[] : json.map((value) => LimitOrderRequest.fromJson(value)).toList();
  }

  static Map<String, LimitOrderRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, LimitOrderRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LimitOrderRequest.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is LimitOrderRequest && runtimeType == other.runtimeType) {
    return 

     lots == other.lots &&
  
          operation == other.operation && // other
    

     price == other.price  
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    

    if (lots != null) {
      hashCode = hashCode ^ lots.hashCode;
    }

            if (operation != null) {
              hashCode = hashCode ^ operation.hashCode;
            }
    

    if (price != null) {
      hashCode = hashCode ^ price.hashCode;
    }


    return hashCode;
  }

  LimitOrderRequest copyWith({
             int lots,
           OperationType operation,
             double price,
    }) {
    LimitOrderRequest copy = LimitOrderRequest();
        copy.lots = lots ?? this.lots;
        copy.operation = operation ?? this.operation;
        copy.price = price ?? this.price;
    return copy;
  }
}


