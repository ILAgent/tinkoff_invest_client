part of tinkoff_api.api;


enum OperationStatus {
    done, decline, progress
}

class OperationStatusTypeTransformer {
  static Map<String, OperationStatus> fromJsonMap = {  
  "Done":OperationStatus.done, "Decline":OperationStatus.decline, "Progress":OperationStatus.progress
 };
  static Map<OperationStatus, String> toJsonMap = {  
  OperationStatus.done:"Done", OperationStatus.decline:"Decline", OperationStatus.progress:"Progress"
 };

  static OperationStatus fromJson(dynamic data) {
    var found = fromJsonMap[data];
    if (found == null) {
      throw('Unknown enum value to decode: $data');
    }
    return found;
  }

  static dynamic toJson(OperationStatus data) {
    return toJsonMap[data];
  }

  static List<OperationStatus> listFromJson(List<dynamic> json) {
    return json == null ? <OperationStatus>[] : json.map((value) => fromJson(value)).toList();
  }

  static OperationStatus copyWith(OperationStatus instance) {
    return instance;
  }

  static Map<String, OperationStatus> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OperationStatus>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = fromJson(value));
    }
    return map;
  }
}


