part of tinkoff_api.api;

// MarketOrderRequest
class MarketOrderRequest {
    
      int lots;
    
        OperationType operation;
MarketOrderRequest();

  @override
  String toString() {
    return 'MarketOrderRequest[lots=$lots, operation=$operation, ]';
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

  }

  MarketOrderRequest.fromJson(Map<String, dynamic> json) {
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
    return json;
  }
  static List<MarketOrderRequest> listFromJson(List<dynamic> json) {
    return json == null ? <MarketOrderRequest>[] : json.map((value) => MarketOrderRequest.fromJson(value)).toList();
  }

  static Map<String, MarketOrderRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, MarketOrderRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MarketOrderRequest.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is MarketOrderRequest && runtimeType == other.runtimeType) {
    return 

     lots == other.lots &&
  
          operation == other.operation    
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
    

    return hashCode;
  }

  MarketOrderRequest copyWith({
             int lots,
           OperationType operation,
    }) {
    MarketOrderRequest copy = MarketOrderRequest();
        copy.lots = lots ?? this.lots;
        copy.operation = operation ?? this.operation;
    return copy;
  }
}


