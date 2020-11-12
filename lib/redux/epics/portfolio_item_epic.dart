import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
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
    return actions
        .where((action) => action is InitAction)
        .asyncMap((_) async => await _apiService.portfolio())
        .switchMap((portfolio) {
      final items = portfolio.positions
          .map(
            (p) => PortfolioItem(portfolioPosition: p),
          )
          .toList();
      final updateItemStream =
          Stream.fromIterable(items).asyncMap((item) async {
        final actualPrice =
            await _apiService.actualPrice(item.portfolioPosition.figi);
        final income = await _apiService.income(item.portfolioPosition.figi);
        return UpdatePortfolioItem(item.copyWith(
          actualPrice: actualPrice,
          income: income,
        )) as dynamic;
      });
      return updateItemStream.startWith(UpdatePortfolioItems(items));
    });
  }
}
