part of tinkoff_api.api;

// Operations
class Operations {
    
      List<Operation> operations = [];
Operations();

  @override
  String toString() {
    return 'Operations[operations=$operations, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'operations'];
      operations = (_jsonData == null) ? null :
            Operation.listFromJson(_jsonData);
    } // _jsonFieldName

  }

  Operations.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (operations != null) {
          json[r'operations'] = LocalApiClient.serialize(operations);
    }
    return json;
  }
  static List<Operations> listFromJson(List<dynamic> json) {
    return json == null ? <Operations>[] : json.map((value) => Operations.fromJson(value)).toList();
  }

  static Map<String, Operations> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Operations>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Operations.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is Operations && runtimeType == other.runtimeType) {
    return 
        const ListEquality().equals(operations, other.operations)    
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    
        hashCode = hashCode ^ const ListEquality().hash(operations);
    

    return hashCode;
  }

  Operations copyWith({
           List<Operation> operations,
    }) {
    Operations copy = Operations();
        {
        var newVal;
        final v = operations ?? this.operations;
          newVal = <Operation>        []..addAll((v ?? []).map((y) => y.copyWith()).toList())
;
        copy.operations = newVal;
        }
    return copy;
  }
}


