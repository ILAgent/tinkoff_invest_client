import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/app_state.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_item.dart';
import 'package:tinkoff_invest/services/actual_price_provider.dart';
import 'package:tinkoff_invest/services/income_calculator.dart';
import 'package:tinkoff_invest/services/portfolio_provider.dart';

class PortfolioItemsEpic {
  final PortfolioProvider _portfolioProvider;
  final IncomeCalculator _incomeCalculator;
  final ActualPriceProvider _actualPriceProvider;

  PortfolioItemsEpic(
    this._portfolioProvider,
    this._incomeCalculator,
    this._actualPriceProvider,
  );

  Stream<dynamic> act(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) {
    return actions
        .where((action) => action is InitAction) //
        .asyncMap((_) async => await _portfolioProvider.portfolio())
        .switchMap((portfolio) {
      final items = portfolio.positions
          .map(
            (p) => PortfolioItem((b) => b..portfolioPosition = p.toBuilder()),
          )
          .toList();
      final updateItemStream =
          Stream.fromIterable(items).asyncMap((item) async {
        final actualPrice = await _actualPriceProvider.actualPrice(item.figi());
        final income = await _incomeCalculator.income(item.figi());
        return UpdatePortfolioItemValues(item.figi(), actualPrice, income)
            as dynamic;
      });
      return updateItemStream.startWith(InitPortfolioItems(items));
    });
  }
}
