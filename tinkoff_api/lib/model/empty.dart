part of tinkoff_api.api;

// Empty
class Empty {
    
      String trackingId;
    
      dynamic payload;
    
      String status = "Ok";
Empty();

  @override
  String toString() {
    return 'Empty[trackingId=$trackingId, payload=$payload, status=$status, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'trackingId'];
      trackingId = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'payload'];
      payload = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'status'];
      status = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName

  }

  Empty.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (trackingId != null) {
            json[r'trackingId'] = LocalApiClient.serialize(trackingId);
    }
    if (payload != null) {
            json[r'payload'] = LocalApiClient.serialize(payload);
    }
    if (status != null) {
            json[r'status'] = LocalApiClient.serialize(status);
    }
    return json;
  }
  static List<Empty> listFromJson(List<dynamic> json) {
    return json == null ? <Empty>[] : json.map((value) => Empty.fromJson(value)).toList();
  }

  static Map<String, Empty> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Empty>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Empty.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is Empty && runtimeType == other.runtimeType) {
    return 

     trackingId == other.trackingId &&
  

     payload == other.payload &&
  

     status == other.status  
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    

    if (trackingId != null) {
      hashCode = hashCode ^ trackingId.hashCode;
    }


    if (payload != null) {
      hashCode = hashCode ^ payload.hashCode;
    }


    if (status != null) {
      hashCode = hashCode ^ status.hashCode;
    }


    return hashCode;
  }

  Empty copyWith({
             String trackingId,
             dynamic payload,
             String status,
    }) {
    Empty copy = Empty();
        copy.trackingId = trackingId ?? this.trackingId;
        copy.payload = payload ?? this.payload;
        copy.status = status ?? this.status;
    return copy;
  }
}


