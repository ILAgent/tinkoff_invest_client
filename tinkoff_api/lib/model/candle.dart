part of tinkoff_api.api;

// Candle
class Candle {
    
      String figi;
    
        CandleResolution interval;
    
      double o;
    
      double c;
    
      double h;
    
      double l;
    
      int v;
    /* ISO8601 */
      DateTime time;
Candle();

  @override
  String toString() {
    return 'Candle[figi=$figi, interval=$interval, o=$o, c=$c, h=$h, l=$l, v=$v, time=$time, ]';
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
      final _jsonData = json[r'o'];
      o = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'c'];
      c = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'h'];
      h = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'l'];
      l = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'v'];
      v = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'time'];
      time = (_jsonData == null) ? null :
        DateTime.parse(_jsonData);
    } // _jsonFieldName

  }

  Candle.fromJson(Map<String, dynamic> json) {
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
    if (o != null) {
            json[r'o'] = LocalApiClient.serialize(o);
    }
    if (c != null) {
            json[r'c'] = LocalApiClient.serialize(c);
    }
    if (h != null) {
            json[r'h'] = LocalApiClient.serialize(h);
    }
    if (l != null) {
            json[r'l'] = LocalApiClient.serialize(l);
    }
    if (v != null) {
            json[r'v'] = LocalApiClient.serialize(v);
    }
    if (time != null) {
      json[r'time'] = time.toUtc().toIso8601String();
    }
    return json;
  }
  static List<Candle> listFromJson(List<dynamic> json) {
    return json == null ? <Candle>[] : json.map((value) => Candle.fromJson(value)).toList();
  }

  static Map<String, Candle> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Candle>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Candle.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is Candle && runtimeType == other.runtimeType) {
    return 

     figi == other.figi &&
  
          interval == other.interval && // other
    

     o == other.o &&
  

     c == other.c &&
  

     h == other.h &&
  

     l == other.l &&
  

     v == other.v &&
  
          time == other.time    
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
    

    if (o != null) {
      hashCode = hashCode ^ o.hashCode;
    }


    if (c != null) {
      hashCode = hashCode ^ c.hashCode;
    }


    if (h != null) {
      hashCode = hashCode ^ h.hashCode;
    }


    if (l != null) {
      hashCode = hashCode ^ l.hashCode;
    }


    if (v != null) {
      hashCode = hashCode ^ v.hashCode;
    }

            if (time != null) {
              hashCode = hashCode ^ time.hashCode;
            }
    

    return hashCode;
  }

  Candle copyWith({
             String figi,
           CandleResolution interval,
             double o,
             double c,
             double h,
             double l,
             int v,
           DateTime time,
    }) {
    Candle copy = Candle();
        copy.figi = figi ?? this.figi;
        copy.interval = interval ?? this.interval;
        copy.o = o ?? this.o;
        copy.c = c ?? this.c;
        copy.h = h ?? this.h;
        copy.l = l ?? this.l;
        copy.v = v ?? this.v;
        copy.time = time ?? this.time;
    return copy;
  }
}


