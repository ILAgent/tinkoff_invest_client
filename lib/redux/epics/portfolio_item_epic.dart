import 'package:redux_epics/redux_epics.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/services/api_service.dart';

import '../state/portfolio_state.dart';

class PortfolioItemsEpic {
  final ApiService _apiService;

  PortfolioItemsEpic(this._apiService);

  Stream<dynamic> act(
    Stream<dynamic> actions,
    EpicStore<PortfolioState> store,
  ) {
    return actions.where((action) => action is InitAction).asyncMap((_) async {
      final portfolio = await _apiService.portfolio();
      return UpdatePortfolioItems(portfolio.positions);
    });
  }
}
