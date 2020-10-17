part of tinkoff_api.api;

// MarketInstrumentList
class MarketInstrumentList {
    
      num total;
    
      List<MarketInstrument> instruments = [];
MarketInstrumentList();

  @override
  String toString() {
    return 'MarketInstrumentList[total=$total, instruments=$instruments, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'total'];
      total = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'instruments'];
      instruments = (_jsonData == null) ? null :
            MarketInstrument.listFromJson(_jsonData);
    } // _jsonFieldName

  }

  MarketInstrumentList.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (total != null) {
            json[r'total'] = LocalApiClient.serialize(total);
    }
    if (instruments != null) {
          json[r'instruments'] = LocalApiClient.serialize(instruments);
    }
    return json;
  }
  static List<MarketInstrumentList> listFromJson(List<dynamic> json) {
    return json == null ? <MarketInstrumentList>[] : json.map((value) => MarketInstrumentList.fromJson(value)).toList();
  }

  static Map<String, MarketInstrumentList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, MarketInstrumentList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MarketInstrumentList.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is MarketInstrumentList && runtimeType == other.runtimeType) {
    return 

     total == other.total &&
  
        const ListEquality().equals(instruments, other.instruments)    
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    

    if (total != null) {
      hashCode = hashCode ^ total.hashCode;
    }

        hashCode = hashCode ^ const ListEquality().hash(instruments);
    

    return hashCode;
  }

  MarketInstrumentList copyWith({
             num total,
           List<MarketInstrument> instruments,
    }) {
    MarketInstrumentList copy = MarketInstrumentList();
        copy.total = total ?? this.total;
        {
        var newVal;
        final v = instruments ?? this.instruments;
          newVal = <MarketInstrument>        []..addAll((v ?? []).map((y) => y.copyWith()).toList())
;
        copy.instruments = newVal;
        }
    return copy;
  }
}


