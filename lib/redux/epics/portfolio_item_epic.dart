import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/app_state.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_item.dart';
import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest/services/api_service_extension.dart';

class PortfolioItemsEpic {
  final ApiService _apiService;

  PortfolioItemsEpic(this._apiService);

  Stream<dynamic> act(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) {
    return actions
        .where((action) => action is InitAction) //
        .asyncMap((_) async => await _apiService.portfolio())
        .switchMap((portfolio) {
      final items = portfolio.positions
          .map(
            (p) => PortfolioItem((b) => b..portfolioPosition = p.toBuilder()),
          )
          .toList();
      final updateItemStream = Stream.fromIterable(items).asyncMap((item) async {
        final actualPrice = await _apiService.actualPrice(item.figi());
        final income = await _apiService.income(item.figi());
        return UpdatePortfolioItemValues(item.figi(), actualPrice, income) as dynamic;
      });
      return updateItemStream.startWith(InitPortfolioItems(items));
    });
  }
}
