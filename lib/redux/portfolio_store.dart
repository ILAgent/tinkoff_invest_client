import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tinkoff_api/model/currency.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';
import 'package:tinkoff_invest/redux/protfolio_state_reducer.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';
import 'package:tinkoff_invest/redux/state/portfolio_state.dart';

import 'epics/portfolio_item_epic.dart';
import 'epics/total_money_epic.dart';

class PortfolioStore extends Store<PortfolioState> implements Dispatcher {
  PortfolioStore(
      TotalAmountEpic totalAmountEpic, PortfolioItemsEpic portfolioItemsEpic)
      : super(reducePortfolioState,
            initialState: PortfolioState(
              currency: Currency.rUB,
              amount: 0,
              items: List<PortfolioItem>(),
            ),
            middleware: [
              EpicMiddleware(totalAmountEpic.act),
              EpicMiddleware(portfolioItemsEpic.act),
            ]);
}
