import 'package:built_collection/built_collection.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';
import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest/services/api_service_extension.dart';

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
      final items = await Stream.fromIterable(portfolio.positions).asyncMap(
        (p) async {
          final price = await _apiService.actualPrice(p.figi);
          return PortfolioItem((b) async => b
            ..portfolioPosition = p.toBuilder()
            ..actualPrice = price);
        },
      ).toList();
      return UpdatePortfolioItems(BuiltList(items));
    });
  }
}
