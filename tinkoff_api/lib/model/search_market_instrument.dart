part of tinkoff_api.api;

// SearchMarketInstrument
class SearchMarketInstrument {
    
      String figi;
    
      String ticker;
    
      String isin;
    /* Шаг цены */
      double minPriceIncrement;
    
      int lot;
    
        Currency currency;
    
      String name;
    
        InstrumentType type;
SearchMarketInstrument();

  @override
  String toString() {
    return 'SearchMarketInstrument[figi=$figi, ticker=$ticker, isin=$isin, minPriceIncrement=$minPriceIncrement, lot=$lot, currency=$currency, name=$name, type=$type, ]';
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
      final _jsonData = json[r'minPriceIncrement'];
      minPriceIncrement = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'lot'];
      lot = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'currency'];
      currency = (_jsonData == null) ? null :
        CurrencyTypeTransformer.fromJson(_jsonData);

    } // _jsonFieldName
    {
      final _jsonData = json[r'name'];
      name = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'type'];
      type = (_jsonData == null) ? null :
        InstrumentTypeTypeTransformer.fromJson(_jsonData);

    } // _jsonFieldName

  }

  SearchMarketInstrument.fromJson(Map<String, dynamic> json) {
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
    if (minPriceIncrement != null) {
            json[r'minPriceIncrement'] = LocalApiClient.serialize(minPriceIncrement);
    }
    if (lot != null) {
            json[r'lot'] = LocalApiClient.serialize(lot);
    }
    if (currency != null) {
          json[r'currency'] = LocalApiClient.serialize(currency);
    }
    if (name != null) {
            json[r'name'] = LocalApiClient.serialize(name);
    }
    if (type != null) {
          json[r'type'] = LocalApiClient.serialize(type);
    }
    return json;
  }
  static List<SearchMarketInstrument> listFromJson(List<dynamic> json) {
    return json == null ? <SearchMarketInstrument>[] : json.map((value) => SearchMarketInstrument.fromJson(value)).toList();
  }

  static Map<String, SearchMarketInstrument> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SearchMarketInstrument>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SearchMarketInstrument.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is SearchMarketInstrument && runtimeType == other.runtimeType) {
    return 

     figi == other.figi &&
  

     ticker == other.ticker &&
  

     isin == other.isin &&
  

     minPriceIncrement == other.minPriceIncrement &&
  

     lot == other.lot &&
  
          currency == other.currency && // other
    

     name == other.name &&
  
          type == other.type    
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


    if (minPriceIncrement != null) {
      hashCode = hashCode ^ minPriceIncrement.hashCode;
    }


    if (lot != null) {
      hashCode = hashCode ^ lot.hashCode;
    }

            if (currency != null) {
              hashCode = hashCode ^ currency.hashCode;
            }
    

    if (name != null) {
      hashCode = hashCode ^ name.hashCode;
    }

            if (type != null) {
              hashCode = hashCode ^ type.hashCode;
            }
    

    return hashCode;
  }

  SearchMarketInstrument copyWith({
             String figi,
             String ticker,
             String isin,
             double minPriceIncrement,
             int lot,
           Currency currency,
             String name,
           InstrumentType type,
    }) {
    SearchMarketInstrument copy = SearchMarketInstrument();
        copy.figi = figi ?? this.figi;
        copy.ticker = ticker ?? this.ticker;
        copy.isin = isin ?? this.isin;
        copy.minPriceIncrement = minPriceIncrement ?? this.minPriceIncrement;
        copy.lot = lot ?? this.lot;
        copy.currency = currency ?? this.currency;
        copy.name = name ?? this.name;
        copy.type = type ?? this.type;
    return copy;
  }
}


