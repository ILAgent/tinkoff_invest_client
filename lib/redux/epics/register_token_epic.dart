import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tinkoff_invest/redux/state/app_state.dart';
import 'package:tinkoff_invest/services/api_service.dart';

import '../actions.dart';

class RegisterTokenEpic {
  final ApiService _apiService;

  RegisterTokenEpic(this._apiService);

  Stream<dynamic> act(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.where((event) => event is RegisterToken).doOnData(
      (event) {
        _apiService.setToken((event as RegisterToken).token);
      },
    ).map((event) => InitAction());
  }
}
