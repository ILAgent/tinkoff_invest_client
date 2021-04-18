import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_state.dart';
import 'package:tinkoff_invest/redux/store_extension.dart';
import 'package:tinkoff_invest/services/storage/storage.dart';

class SaveSateEpic {
  final Storage _storage;

  SaveSateEpic(this._storage);

  Stream<dynamic> act(
    Stream<dynamic> actions,
    EpicStore<PortfolioState> store,
  ) {
    return store.states //
        .skip(1)
        .throttleTime(Duration(seconds: 1), trailing: true)
        .doOnData((state) => _storage.state = state)
        .where((_) => false);
  }
}
