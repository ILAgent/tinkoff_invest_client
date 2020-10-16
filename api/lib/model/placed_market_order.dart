part of petstore_api.api;

// PlacedMarketOrder
class PlacedMarketOrder {
    
      String orderId;
    
        OperationType operation;
    
        OrderStatus status;
    
      String rejectReason;
    /* Сообщение об ошибке */
      String message;
    
      int requestedLots;
    
      int executedLots;
    
      MoneyAmount commission;
PlacedMarketOrder();

  @override
  String toString() {
    return 'PlacedMarketOrder[orderId=$orderId, operation=$operation, status=$status, rejectReason=$rejectReason, message=$message, requestedLots=$requestedLots, executedLots=$executedLots, commission=$commission, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'orderId'];
      orderId = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'operation'];
      operation = (_jsonData == null) ? null :
        OperationTypeTypeTransformer.fromJson(_jsonData);

    } // _jsonFieldName
    {
      final _jsonData = json[r'status'];
      status = (_jsonData == null) ? null :
        OrderStatusTypeTransformer.fromJson(_jsonData);

    } // _jsonFieldName
    {
      final _jsonData = json[r'rejectReason'];
      rejectReason = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'message'];
      message = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'requestedLots'];
      requestedLots = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'executedLots'];
      executedLots = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'commission'];
      commission = (_jsonData == null) ? null :
        
        MoneyAmount.fromJson(_jsonData);
    } // _jsonFieldName

  }

  PlacedMarketOrder.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (orderId != null) {
            json[r'orderId'] = LocalApiClient.serialize(orderId);
    }
    if (operation != null) {
          json[r'operation'] = LocalApiClient.serialize(operation);
    }
    if (status != null) {
          json[r'status'] = LocalApiClient.serialize(status);
    }
    if (rejectReason != null) {
            json[r'rejectReason'] = LocalApiClient.serialize(rejectReason);
    }
    if (message != null) {
            json[r'message'] = LocalApiClient.serialize(message);
    }
    if (requestedLots != null) {
            json[r'requestedLots'] = LocalApiClient.serialize(requestedLots);
    }
    if (executedLots != null) {
            json[r'executedLots'] = LocalApiClient.serialize(executedLots);
    }
    if (commission != null) {
          json[r'commission'] = LocalApiClient.serialize(commission);
    }
    return json;
  }
  static List<PlacedMarketOrder> listFromJson(List<dynamic> json) {
    return json == null ? <PlacedMarketOrder>[] : json.map((value) => PlacedMarketOrder.fromJson(value)).toList();
  }

  static Map<String, PlacedMarketOrder> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PlacedMarketOrder>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PlacedMarketOrder.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is PlacedMarketOrder && runtimeType == other.runtimeType) {
    return 

     orderId == other.orderId &&
  
          operation == other.operation && // other
    
          status == other.status && // other
    

     rejectReason == other.rejectReason &&
  

     message == other.message &&
  

     requestedLots == other.requestedLots &&
  

     executedLots == other.executedLots &&
  
          commission == other.commission    
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    

    if (orderId != null) {
      hashCode = hashCode ^ orderId.hashCode;
    }

            if (operation != null) {
              hashCode = hashCode ^ operation.hashCode;
            }
    
            if (status != null) {
              hashCode = hashCode ^ status.hashCode;
            }
    

    if (rejectReason != null) {
      hashCode = hashCode ^ rejectReason.hashCode;
    }


    if (message != null) {
      hashCode = hashCode ^ message.hashCode;
    }


    if (requestedLots != null) {
      hashCode = hashCode ^ requestedLots.hashCode;
    }


    if (executedLots != null) {
      hashCode = hashCode ^ executedLots.hashCode;
    }

            if (commission != null) {
              hashCode = hashCode ^ commission.hashCode;
            }
    

    return hashCode;
  }

  PlacedMarketOrder copyWith({
             String orderId,
           OperationType operation,
           OrderStatus status,
             String rejectReason,
             String message,
             int requestedLots,
             int executedLots,
           MoneyAmount commission,
    }) {
    PlacedMarketOrder copy = PlacedMarketOrder();
        copy.orderId = orderId ?? this.orderId;
        copy.operation = operation ?? this.operation;
        copy.status = status ?? this.status;
        copy.rejectReason = rejectReason ?? this.rejectReason;
        copy.message = message ?? this.message;
        copy.requestedLots = requestedLots ?? this.requestedLots;
        copy.executedLots = executedLots ?? this.executedLots;
        copy.commission = commission ?? this.commission?.copyWith();
    return copy;
  }
}


