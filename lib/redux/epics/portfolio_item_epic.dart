import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';
import 'package:tinkoff_invest/services/api_service.dart';

import '../state/portfolio_state.dart';

class PortfolioItemsEpic {
  final ApiService _apiService;

  PortfolioItemsEpic(this._apiService);

  Stream<dynamic> act(
    Stream<dynamic> actions,
    EpicStore<PortfolioState> store,
  ) {
    return actions
        .where((action) => action is InitAction)
        .asyncMap((_) async => await _apiService.portfolio())
        .switchMap((portfolio) {
      final items = portfolio.positions
          .map(
            (p) => PortfolioItem(portfolioPosition: p),
          )
          .toList();
      return Stream.fromIterable([
        UpdatePortfolioItems(items),
      ]);
    });
  }
}
