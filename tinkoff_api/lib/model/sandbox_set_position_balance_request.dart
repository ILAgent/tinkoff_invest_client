part of tinkoff_api.api;

// SandboxSetPositionBalanceRequest
class SandboxSetPositionBalanceRequest {
    
      String figi;
    
      double balance;
SandboxSetPositionBalanceRequest();

  @override
  String toString() {
    return 'SandboxSetPositionBalanceRequest[figi=$figi, balance=$balance, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'figi'];
      figi = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName
    {
      final _jsonData = json[r'balance'];
      balance = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName

  }

  SandboxSetPositionBalanceRequest.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (figi != null) {
            json[r'figi'] = LocalApiClient.serialize(figi);
    }
    if (balance != null) {
            json[r'balance'] = LocalApiClient.serialize(balance);
    }
    return json;
  }
  static List<SandboxSetPositionBalanceRequest> listFromJson(List<dynamic> json) {
    return json == null ? <SandboxSetPositionBalanceRequest>[] : json.map((value) => SandboxSetPositionBalanceRequest.fromJson(value)).toList();
  }

  static Map<String, SandboxSetPositionBalanceRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SandboxSetPositionBalanceRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SandboxSetPositionBalanceRequest.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is SandboxSetPositionBalanceRequest && runtimeType == other.runtimeType) {
    return 

     figi == other.figi &&
  

     balance == other.balance  
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


    if (balance != null) {
      hashCode = hashCode ^ balance.hashCode;
    }


    return hashCode;
  }

  SandboxSetPositionBalanceRequest copyWith({
             String figi,
             double balance,
    }) {
    SandboxSetPositionBalanceRequest copy = SandboxSetPositionBalanceRequest();
        copy.figi = figi ?? this.figi;
        copy.balance = balance ?? this.balance;
    return copy;
  }
}


