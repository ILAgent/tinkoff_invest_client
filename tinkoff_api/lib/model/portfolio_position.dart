part of tinkoff_api.api;

// PortfolioPosition
class PortfolioPosition {
    
      String figi;
    
      String ticker;
    
      String isin;
    
        InstrumentType instrumentType;
    
      double balance;
    
      double blocked;
    
      MoneyAmount expectedYield;
    
      int lots;
    
      MoneyAmount averagePositionPrice;
    
      MoneyAmount averagePositionPriceNoNkd;
    
      String name;
PortfolioPosition();

  @override
  String toString() {
    return 'PortfolioPosition[figi=$figi, ticker=$ticker, isin=$isin, instrumentType=$instrumentType, balance=$balance, blocked=$blocked, expectedYield=$expectedYield, lots=$lots, averagePositionPrice=$averagePositionPrice, averagePositionPriceNoNkd=$averagePositionPriceNoNkd, name=$name, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'figi'];
      figi = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'ticker'];
      ticker = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'isin'];
      isin = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'instrumentType'];
      instrumentType = (_jsonData == null) ? null :
        InstrumentTypeTypeTransformer.fromJson(_jsonData);

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
    {
      final _jsonData = json[r'expectedYield'];
      expectedYield = (_jsonData == null) ? null :
        
        MoneyAmount.fromJson(_jsonData);
    } // _jsonFieldName
    {
      final _jsonData = json[r'lots'];
      lots = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'averagePositionPrice'];
      averagePositionPrice = (_jsonData == null) ? null :
        
        MoneyAmount.fromJson(_jsonData);
    } // _jsonFieldName
    {
      final _jsonData = json[r'averagePositionPriceNoNkd'];
      averagePositionPriceNoNkd = (_jsonData == null) ? null :
        
        MoneyAmount.fromJson(_jsonData);
    } // _jsonFieldName
    {
      final _jsonData = json[r'name'];
      name = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName

  }

  PortfolioPosition.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (figi != null) {
            json[r'figi'] = LocalApiClient.serialize(figi);
    }
    if (ticker != null) {
            json[r'ticker'] = LocalApiClient.serialize(ticker);
    }
    if (isin != null) {
            json[r'isin'] = LocalApiClient.serialize(isin);
    }
    if (instrumentType != null) {
          json[r'instrumentType'] = LocalApiClient.serialize(instrumentType);
    }
    if (balance != null) {
            json[r'balance'] = LocalApiClient.serialize(balance);
    }
    if (blocked != null) {
            json[r'blocked'] = LocalApiClient.serialize(blocked);
    }
    if (expectedYield != null) {
          json[r'expectedYield'] = LocalApiClient.serialize(expectedYield);
    }
    if (lots != null) {
            json[r'lots'] = LocalApiClient.serialize(lots);
    }
    if (averagePositionPrice != null) {
          json[r'averagePositionPrice'] = LocalApiClient.serialize(averagePositionPrice);
    }
    if (averagePositionPriceNoNkd != null) {
          json[r'averagePositionPriceNoNkd'] = LocalApiClient.serialize(averagePositionPriceNoNkd);
    }
    if (name != null) {
            json[r'name'] = LocalApiClient.serialize(name);
    }
    return json;
  }
  static List<PortfolioPosition> listFromJson(List<dynamic> json) {
    return json == null ? <PortfolioPosition>[] : json.map((value) => PortfolioPosition.fromJson(value)).toList();
  }

  static Map<String, PortfolioPosition> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PortfolioPosition>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PortfolioPosition.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is PortfolioPosition && runtimeType == other.runtimeType) {
    return 

     figi == other.figi &&
  

     ticker == other.ticker &&
  

     isin == other.isin &&
  
          instrumentType == other.instrumentType && // other
    

     balance == other.balance &&
  

     blocked == other.blocked &&
  
          expectedYield == other.expectedYield && // other
    

     lots == other.lots &&
  
          averagePositionPrice == other.averagePositionPrice && // other
    
          averagePositionPriceNoNkd == other.averagePositionPriceNoNkd && // other
    

     name == other.name  
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


    if (ticker != null) {
      hashCode = hashCode ^ ticker.hashCode;
    }


    if (isin != null) {
      hashCode = hashCode ^ isin.hashCode;
    }

            if (instrumentType != null) {
              hashCode = hashCode ^ instrumentType.hashCode;
            }
    

    if (balance != null) {
      hashCode = hashCode ^ balance.hashCode;
    }


    if (blocked != null) {
      hashCode = hashCode ^ blocked.hashCode;
    }

            if (expectedYield != null) {
              hashCode = hashCode ^ expectedYield.hashCode;
            }
    

    if (lots != null) {
      hashCode = hashCode ^ lots.hashCode;
    }

            if (averagePositionPrice != null) {
              hashCode = hashCode ^ averagePositionPrice.hashCode;
            }
    
            if (averagePositionPriceNoNkd != null) {
              hashCode = hashCode ^ averagePositionPriceNoNkd.hashCode;
            }
    

    if (name != null) {
      hashCode = hashCode ^ name.hashCode;
    }


    return hashCode;
  }

  PortfolioPosition copyWith({
             String figi,
             String ticker,
             String isin,
           InstrumentType instrumentType,
             double balance,
             double blocked,
           MoneyAmount expectedYield,
             int lots,
           MoneyAmount averagePositionPrice,
           MoneyAmount averagePositionPriceNoNkd,
             String name,
    }) {
    PortfolioPosition copy = PortfolioPosition();
        copy.figi = figi ?? this.figi;
        copy.ticker = ticker ?? this.ticker;
        copy.isin = isin ?? this.isin;
        copy.instrumentType = instrumentType ?? this.instrumentType;
        copy.balance = balance ?? this.balance;
        copy.blocked = blocked ?? this.blocked;
        copy.expectedYield = expectedYield ?? this.expectedYield?.copyWith();
        copy.lots = lots ?? this.lots;
        copy.averagePositionPrice = averagePositionPrice ?? this.averagePositionPrice?.copyWith();
        copy.averagePositionPriceNoNkd = averagePositionPriceNoNkd ?? this.averagePositionPriceNoNkd?.copyWith();
        copy.name = name ?? this.name;
    return copy;
  }
}


