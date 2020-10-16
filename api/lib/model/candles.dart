part of petstore_api.api;

// Candles
class Candles {
    
      String figi;
    
        CandleResolution interval;
    
      List<Candle> candles = [];
Candles();

  @override
  String toString() {
    return 'Candles[figi=$figi, interval=$interval, candles=$candles, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'figi'];
      figi = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'interval'];
      interval = (_jsonData == null) ? null :
        CandleResolutionTypeTransformer.fromJson(_jsonData);

    } // _jsonFieldName
    {
      final _jsonData = json[r'candles'];
      candles = (_jsonData == null) ? null :
            Candle.listFromJson(_jsonData);
    } // _jsonFieldName

  }

  Candles.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (figi != null) {
            json[r'figi'] = LocalApiClient.serialize(figi);
    }
    if (interval != null) {
          json[r'interval'] = LocalApiClient.serialize(interval);
    }
    if (candles != null) {
          json[r'candles'] = LocalApiClient.serialize(candles);
    }
    return json;
  }
  static List<Candles> listFromJson(List<dynamic> json) {
    return json == null ? <Candles>[] : json.map((value) => Candles.fromJson(value)).toList();
  }

  static Map<String, Candles> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Candles>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Candles.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is Candles && runtimeType == other.runtimeType) {
    return 

     figi == other.figi &&
  
          interval == other.interval && // other
    
        const ListEquality().equals(candles, other.candles)    
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

            if (interval != null) {
              hashCode = hashCode ^ interval.hashCode;
            }
    
        hashCode = hashCode ^ const ListEquality().hash(candles);
    

    return hashCode;
  }

  Candles copyWith({
             String figi,
           CandleResolution interval,
           List<Candle> candles,
    }) {
    Candles copy = Candles();
        copy.figi = figi ?? this.figi;
        copy.interval = interval ?? this.interval;
        {
        var newVal;
        final v = candles ?? this.candles;
          newVal = <Candle>        []..addAll((v ?? []).map((y) => y.copyWith()).toList())
;
        copy.candles = newVal;
        }
    return copy;
  }
}


