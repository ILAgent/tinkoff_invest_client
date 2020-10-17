part of petstore_api.api;

// Order
class Order {
    
      String orderId;
    
      String figi;
    
        OperationType operation;
    
        OrderStatus status;
    
      int requestedLots;
    
      int executedLots;
    
        OrderType type;
    
      double price;
Order();

  @override
  String toString() {
    return 'Order[orderId=$orderId, figi=$figi, operation=$operation, status=$status, requestedLots=$requestedLots, executedLots=$executedLots, type=$type, price=$price, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'orderId'];
      orderId = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'figi'];
      figi = (_jsonData == null) ? null :
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
      final _jsonData = json[r'type'];
      type = (_jsonData == null) ? null :
        OrderTypeTypeTransformer.fromJson(_jsonData);

    } // _jsonFieldName
    {
      final _jsonData = json[r'price'];
      price = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName

  }

  Order.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (orderId != null) {
            json[r'orderId'] = LocalApiClient.serialize(orderId);
    }
    if (figi != null) {
            json[r'figi'] = LocalApiClient.serialize(figi);
    }
    if (operation != null) {
          json[r'operation'] = LocalApiClient.serialize(operation);
    }
    if (status != null) {
          json[r'status'] = LocalApiClient.serialize(status);
    }
    if (requestedLots != null) {
            json[r'requestedLots'] = LocalApiClient.serialize(requestedLots);
    }
    if (executedLots != null) {
            json[r'executedLots'] = LocalApiClient.serialize(executedLots);
    }
    if (type != null) {
          json[r'type'] = LocalApiClient.serialize(type);
    }
    if (price != null) {
            json[r'price'] = LocalApiClient.serialize(price);
    }
    return json;
  }
  static List<Order> listFromJson(List<dynamic> json) {
    return json == null ? <Order>[] : json.map((value) => Order.fromJson(value)).toList();
  }

  static Map<String, Order> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Order>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Order.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is Order && runtimeType == other.runtimeType) {
    return 

     orderId == other.orderId &&
  

     figi == other.figi &&
  
          operation == other.operation && // other
    
          status == other.status && // other
    

     requestedLots == other.requestedLots &&
  

     executedLots == other.executedLots &&
  
          type == other.type && // other
    

     price == other.price  
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


    if (figi != null) {
      hashCode = hashCode ^ figi.hashCode;
    }

            if (operation != null) {
              hashCode = hashCode ^ operation.hashCode;
            }
    
            if (status != null) {
              hashCode = hashCode ^ status.hashCode;
            }
    

    if (requestedLots != null) {
      hashCode = hashCode ^ requestedLots.hashCode;
    }


    if (executedLots != null) {
      hashCode = hashCode ^ executedLots.hashCode;
    }

            if (type != null) {
              hashCode = hashCode ^ type.hashCode;
            }
    

    if (price != null) {
      hashCode = hashCode ^ price.hashCode;
    }


    return hashCode;
  }

  Order copyWith({
             String orderId,
             String figi,
           OperationType operation,
           OrderStatus status,
             int requestedLots,
             int executedLots,
           OrderType type,
             double price,
    }) {
    Order copy = Order();
        copy.orderId = orderId ?? this.orderId;
        copy.figi = figi ?? this.figi;
        copy.operation = operation ?? this.operation;
        copy.status = status ?? this.status;
        copy.requestedLots = requestedLots ?? this.requestedLots;
        copy.executedLots = executedLots ?? this.executedLots;
        copy.type = type ?? this.type;
        copy.price = price ?? this.price;
    return copy;
  }
}


