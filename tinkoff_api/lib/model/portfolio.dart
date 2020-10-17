part of petstore_api.api;

// Portfolio
class Portfolio {
    
      List<PortfolioPosition> positions = [];
Portfolio();

  @override
  String toString() {
    return 'Portfolio[positions=$positions, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'positions'];
      positions = (_jsonData == null) ? null :
            PortfolioPosition.listFromJson(_jsonData);
    } // _jsonFieldName

  }

  Portfolio.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (positions != null) {
          json[r'positions'] = LocalApiClient.serialize(positions);
    }
    return json;
  }
  static List<Portfolio> listFromJson(List<dynamic> json) {
    return json == null ? <Portfolio>[] : json.map((value) => Portfolio.fromJson(value)).toList();
  }

  static Map<String, Portfolio> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Portfolio>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Portfolio.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is Portfolio && runtimeType == other.runtimeType) {
    return 
        const ListEquality().equals(positions, other.positions)    
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    
        hashCode = hashCode ^ const ListEquality().hash(positions);
    

    return hashCode;
  }

  Portfolio copyWith({
           List<PortfolioPosition> positions,
    }) {
    Portfolio copy = Portfolio();
        {
        var newVal;
        final v = positions ?? this.positions;
          newVal = <PortfolioPosition>        []..addAll((v ?? []).map((y) => y.copyWith()).toList())
;
        copy.positions = newVal;
        }
    return copy;
  }
}


