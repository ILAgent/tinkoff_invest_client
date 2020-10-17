part of tinkoff_api.api;

// Operation
class Operation {
    
      String id;
    
        OperationStatus status;
    
      List<OperationTrade> trades = [];
    
      MoneyAmount commission;
    
        Currency currency;
    
      double payment;
    
      double price;
    /* Число инструментов в выставленной заявке */
      int quantity;
    /* Число инструментов, исполненных в заявке */
      int quantityExecuted;
    
      String figi;
    
        InstrumentType instrumentType;
    
      bool isMarginCall;
    /* ISO8601 */
      DateTime date;
    
        OperationTypeWithCommission operationType;
Operation();

  @override
  String toString() {
    return 'Operation[id=$id, status=$status, trades=$trades, commission=$commission, currency=$currency, payment=$payment, price=$price, quantity=$quantity, quantityExecuted=$quantityExecuted, figi=$figi, instrumentType=$instrumentType, isMarginCall=$isMarginCall, date=$date, operationType=$operationType, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'id'];
      id = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'status'];
      status = (_jsonData == null) ? null :
        OperationStatusTypeTransformer.fromJson(_jsonData);

    } // _jsonFieldName
    {
      final _jsonData = json[r'trades'];
      trades = (_jsonData == null) ? null :
            OperationTrade.listFromJson(_jsonData);
    } // _jsonFieldName
    {
      final _jsonData = json[r'commission'];
      commission = (_jsonData == null) ? null :
        
        MoneyAmount.fromJson(_jsonData);
    } // _jsonFieldName
    {
      final _jsonData = json[r'currency'];
      currency = (_jsonData == null) ? null :
        CurrencyTypeTransformer.fromJson(_jsonData);

    } // _jsonFieldName
    {
      final _jsonData = json[r'payment'];
      payment = (_jsonData == null) ? null :
        _jsonData;
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
    {
      final _jsonData = json[r'quantityExecuted'];
      quantityExecuted = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'figi'];
      figi = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'instrumentType'];
      instrumentType = (_jsonData == null) ? null :
        InstrumentTypeTypeTransformer.fromJson(_jsonData);

    } // _jsonFieldName
    {
      final _jsonData = json[r'isMarginCall'];
      isMarginCall = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'date'];
      date = (_jsonData == null) ? null :
        DateTime.parse(_jsonData);
    } // _jsonFieldName
    {
      final _jsonData = json[r'operationType'];
      operationType = (_jsonData == null) ? null :
        OperationTypeWithCommissionTypeTransformer.fromJson(_jsonData);

    } // _jsonFieldName

  }

  Operation.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (id != null) {
            json[r'id'] = LocalApiClient.serialize(id);
    }
    if (status != null) {
          json[r'status'] = LocalApiClient.serialize(status);
    }
    if (trades != null) {
          json[r'trades'] = LocalApiClient.serialize(trades);
    }
    if (commission != null) {
          json[r'commission'] = LocalApiClient.serialize(commission);
    }
    if (currency != null) {
          json[r'currency'] = LocalApiClient.serialize(currency);
    }
    if (payment != null) {
            json[r'payment'] = LocalApiClient.serialize(payment);
    }
    if (price != null) {
            json[r'price'] = LocalApiClient.serialize(price);
    }
    if (quantity != null) {
            json[r'quantity'] = LocalApiClient.serialize(quantity);
    }
    if (quantityExecuted != null) {
            json[r'quantityExecuted'] = LocalApiClient.serialize(quantityExecuted);
    }
    if (figi != null) {
            json[r'figi'] = LocalApiClient.serialize(figi);
    }
    if (instrumentType != null) {
          json[r'instrumentType'] = LocalApiClient.serialize(instrumentType);
    }
    if (isMarginCall != null) {
            json[r'isMarginCall'] = LocalApiClient.serialize(isMarginCall);
    }
    if (date != null) {
      json[r'date'] = date.toUtc().toIso8601String();
    }
    if (operationType != null) {
          json[r'operationType'] = LocalApiClient.serialize(operationType);
    }
    return json;
  }
  static List<Operation> listFromJson(List<dynamic> json) {
    return json == null ? <Operation>[] : json.map((value) => Operation.fromJson(value)).toList();
  }

  static Map<String, Operation> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Operation>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Operation.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is Operation && runtimeType == other.runtimeType) {
    return 

     id == other.id &&
  
          status == other.status && // other
    
        const ListEquality().equals(trades, other.trades) &&
    
          commission == other.commission && // other
    
          currency == other.currency && // other
    

     payment == other.payment &&
  

     price == other.price &&
  

     quantity == other.quantity &&
  

     quantityExecuted == other.quantityExecuted &&
  

     figi == other.figi &&
  
          instrumentType == other.instrumentType && // other
    

     isMarginCall == other.isMarginCall &&
  
          date == other.date && // other
    
          operationType == other.operationType    
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    

    if (id != null) {
      hashCode = hashCode ^ id.hashCode;
    }

            if (status != null) {
              hashCode = hashCode ^ status.hashCode;
            }
    
        hashCode = hashCode ^ const ListEquality().hash(trades);
    
            if (commission != null) {
              hashCode = hashCode ^ commission.hashCode;
            }
    
            if (currency != null) {
              hashCode = hashCode ^ currency.hashCode;
            }
    

    if (payment != null) {
      hashCode = hashCode ^ payment.hashCode;
    }


    if (price != null) {
      hashCode = hashCode ^ price.hashCode;
    }


    if (quantity != null) {
      hashCode = hashCode ^ quantity.hashCode;
    }


    if (quantityExecuted != null) {
      hashCode = hashCode ^ quantityExecuted.hashCode;
    }


    if (figi != null) {
      hashCode = hashCode ^ figi.hashCode;
    }

            if (instrumentType != null) {
              hashCode = hashCode ^ instrumentType.hashCode;
            }
    

    if (isMarginCall != null) {
      hashCode = hashCode ^ isMarginCall.hashCode;
    }

            if (date != null) {
              hashCode = hashCode ^ date.hashCode;
            }
    
            if (operationType != null) {
              hashCode = hashCode ^ operationType.hashCode;
            }
    

    return hashCode;
  }

  Operation copyWith({
             String id,
           OperationStatus status,
           List<OperationTrade> trades,
           MoneyAmount commission,
           Currency currency,
             double payment,
             double price,
             int quantity,
             int quantityExecuted,
             String figi,
           InstrumentType instrumentType,
             bool isMarginCall,
           DateTime date,
           OperationTypeWithCommission operationType,
    }) {
    Operation copy = Operation();
        copy.id = id ?? this.id;
        copy.status = status ?? this.status;
        {
        var newVal;
        final v = trades ?? this.trades;
          newVal = <OperationTrade>        []..addAll((v ?? []).map((y) => y.copyWith()).toList())
;
        copy.trades = newVal;
        }
        copy.commission = commission ?? this.commission?.copyWith();
        copy.currency = currency ?? this.currency;
        copy.payment = payment ?? this.payment;
        copy.price = price ?? this.price;
        copy.quantity = quantity ?? this.quantity;
        copy.quantityExecuted = quantityExecuted ?? this.quantityExecuted;
        copy.figi = figi ?? this.figi;
        copy.instrumentType = instrumentType ?? this.instrumentType;
        copy.isMarginCall = isMarginCall ?? this.isMarginCall;
        copy.date = date ?? this.date;
        copy.operationType = operationType ?? this.operationType;
    return copy;
  }
}


