part of tinkoff_api.api;

// Orderbook
class Orderbook {
    
      String figi;
    
      int depth;
    
      List<OrderResponse> bids = [];
    
      List<OrderResponse> asks = [];
    
        TradeStatus tradeStatus;
    /* Шаг цены */
      double minPriceIncrement;
    /* Номинал для облигаций */
      double faceValue;
    
      double lastPrice;
    
      double closePrice;
    /* Верхняя граница цены */
      double limitUp;
    /* Нижняя граница цены */
      double limitDown;
Orderbook();

  @override
  String toString() {
    return 'Orderbook[figi=$figi, depth=$depth, bids=$bids, asks=$asks, tradeStatus=$tradeStatus, minPriceIncrement=$minPriceIncrement, faceValue=$faceValue, lastPrice=$lastPrice, closePrice=$closePrice, limitUp=$limitUp, limitDown=$limitDown, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'figi'];
      figi = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'depth'];
      depth = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'bids'];
      bids = (_jsonData == null) ? null :
            OrderResponse.listFromJson(_jsonData);
    } // _jsonFieldName
    {
      final _jsonData = json[r'asks'];
      asks = (_jsonData == null) ? null :
            OrderResponse.listFromJson(_jsonData);
    } // _jsonFieldName
    {
      final _jsonData = json[r'tradeStatus'];
      tradeStatus = (_jsonData == null) ? null :
        TradeStatusTypeTransformer.fromJson(_jsonData);

    } // _jsonFieldName
    {
      final _jsonData = json[r'minPriceIncrement'];
      minPriceIncrement = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'faceValue'];
      faceValue = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'lastPrice'];
      lastPrice = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'closePrice'];
      closePrice = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'limitUp'];
      limitUp = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'limitDown'];
      limitDown = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName

  }

  Orderbook.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (figi != null) {
            json[r'figi'] = LocalApiClient.serialize(figi);
    }
    if (depth != null) {
            json[r'depth'] = LocalApiClient.serialize(depth);
    }
    if (bids != null) {
          json[r'bids'] = LocalApiClient.serialize(bids);
    }
    if (asks != null) {
          json[r'asks'] = LocalApiClient.serialize(asks);
    }
    if (tradeStatus != null) {
          json[r'tradeStatus'] = LocalApiClient.serialize(tradeStatus);
    }
    if (minPriceIncrement != null) {
            json[r'minPriceIncrement'] = LocalApiClient.serialize(minPriceIncrement);
    }
    if (faceValue != null) {
            json[r'faceValue'] = LocalApiClient.serialize(faceValue);
    }
    if (lastPrice != null) {
            json[r'lastPrice'] = LocalApiClient.serialize(lastPrice);
    }
    if (closePrice != null) {
            json[r'closePrice'] = LocalApiClient.serialize(closePrice);
    }
    if (limitUp != null) {
            json[r'limitUp'] = LocalApiClient.serialize(limitUp);
    }
    if (limitDown != null) {
            json[r'limitDown'] = LocalApiClient.serialize(limitDown);
    }
    return json;
  }
  static List<Orderbook> listFromJson(List<dynamic> json) {
    return json == null ? <Orderbook>[] : json.map((value) => Orderbook.fromJson(value)).toList();
  }

  static Map<String, Orderbook> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Orderbook>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Orderbook.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is Orderbook && runtimeType == other.runtimeType) {
    return 

     figi == other.figi &&
  

     depth == other.depth &&
  
        const ListEquality().equals(bids, other.bids) &&
    
        const ListEquality().equals(asks, other.asks) &&
    
          tradeStatus == other.tradeStatus && // other
    

     minPriceIncrement == other.minPriceIncrement &&
  

     faceValue == other.faceValue &&
  

     lastPrice == other.lastPrice &&
  

     closePrice == other.closePrice &&
  

     limitUp == other.limitUp &&
  

     limitDown == other.limitDown  
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    

    if (figi != null) {
      hashCode = hashCode ^ figi.hashCode;
    }


    if (depth != null) {
      hashCode = hashCode ^ depth.hashCode;
    }

        hashCode = hashCode ^ const ListEquality().hash(bids);
    
        hashCode = hashCode ^ const ListEquality().hash(asks);
    
            if (tradeStatus != null) {
              hashCode = hashCode ^ tradeStatus.hashCode;
            }
    

    if (minPriceIncrement != null) {
      hashCode = hashCode ^ minPriceIncrement.hashCode;
    }


    if (faceValue != null) {
      hashCode = hashCode ^ faceValue.hashCode;
    }


    if (lastPrice != null) {
      hashCode = hashCode ^ lastPrice.hashCode;
    }


    if (closePrice != null) {
      hashCode = hashCode ^ closePrice.hashCode;
    }


    if (limitUp != null) {
      hashCode = hashCode ^ limitUp.hashCode;
    }


    if (limitDown != null) {
      hashCode = hashCode ^ limitDown.hashCode;
    }


    return hashCode;
  }

  Orderbook copyWith({
             String figi,
             int depth,
           List<OrderResponse> bids,
           List<OrderResponse> asks,
           TradeStatus tradeStatus,
             double minPriceIncrement,
             double faceValue,
             double lastPrice,
             double closePrice,
             double limitUp,
             double limitDown,
    }) {
    Orderbook copy = Orderbook();
        copy.figi = figi ?? this.figi;
        copy.depth = depth ?? this.depth;
        {
        var newVal;
        final v = bids ?? this.bids;
          newVal = <OrderResponse>        []..addAll((v ?? []).map((y) => y.copyWith()).toList())
;
        copy.bids = newVal;
        }
        {
        var newVal;
        final v = asks ?? this.asks;
          newVal = <OrderResponse>        []..addAll((v ?? []).map((y) => y.copyWith()).toList())
;
        copy.asks = newVal;
        }
        copy.tradeStatus = tradeStatus ?? this.tradeStatus;
        copy.minPriceIncrement = minPriceIncrement ?? this.minPriceIncrement;
        copy.faceValue = faceValue ?? this.faceValue;
        copy.lastPrice = lastPrice ?? this.lastPrice;
        copy.closePrice = closePrice ?? this.closePrice;
        copy.limitUp = limitUp ?? this.limitUp;
        copy.limitDown = limitDown ?? this.limitDown;
    return copy;
  }
}


