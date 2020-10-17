part of petstore_api.api;

// UserAccounts
class UserAccounts {
    
      List<UserAccount> accounts = [];
UserAccounts();

  @override
  String toString() {
    return 'UserAccounts[accounts=$accounts, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'accounts'];
      accounts = (_jsonData == null) ? null :
            UserAccount.listFromJson(_jsonData);
    } // _jsonFieldName

  }

  UserAccounts.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (accounts != null) {
          json[r'accounts'] = LocalApiClient.serialize(accounts);
    }
    return json;
  }
  static List<UserAccounts> listFromJson(List<dynamic> json) {
    return json == null ? <UserAccounts>[] : json.map((value) => UserAccounts.fromJson(value)).toList();
  }

  static Map<String, UserAccounts> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserAccounts>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UserAccounts.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is UserAccounts && runtimeType == other.runtimeType) {
    return 
        const ListEquality().equals(accounts, other.accounts)    
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    
        hashCode = hashCode ^ const ListEquality().hash(accounts);
    

    return hashCode;
  }

  UserAccounts copyWith({
           List<UserAccount> accounts,
    }) {
    UserAccounts copy = UserAccounts();
        {
        var newVal;
        final v = accounts ?? this.accounts;
          newVal = <UserAccount>        []..addAll((v ?? []).map((y) => y.copyWith()).toList())
;
        copy.accounts = newVal;
        }
    return copy;
  }
}


