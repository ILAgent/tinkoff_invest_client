part of petstore_api.api;

// Error_payload
class ErrorPayload {
    
      String message;
    
      String code;
ErrorPayload();

  @override
  String toString() {
    return 'ErrorPayload[message=$message, code=$code, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'message'];
      message = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'code'];
      code = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName

  }

  ErrorPayload.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (message != null) {
            json[r'message'] = LocalApiClient.serialize(message);
    }
    if (code != null) {
            json[r'code'] = LocalApiClient.serialize(code);
    }
    return json;
  }
  static List<ErrorPayload> listFromJson(List<dynamic> json) {
    return json == null ? <ErrorPayload>[] : json.map((value) => ErrorPayload.fromJson(value)).toList();
  }

  static Map<String, ErrorPayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ErrorPayload>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ErrorPayload.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is ErrorPayload && runtimeType == other.runtimeType) {
    return 

     message == other.message &&
  

     code == other.code  
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    

    if (message != null) {
      hashCode = hashCode ^ message.hashCode;
    }


    if (code != null) {
      hashCode = hashCode ^ code.hashCode;
    }


    return hashCode;
  }

  ErrorPayload copyWith({
             String message,
             String code,
    }) {
    ErrorPayload copy = ErrorPayload();
        copy.message = message ?? this.message;
        copy.code = code ?? this.code;
    return copy;
  }
}


