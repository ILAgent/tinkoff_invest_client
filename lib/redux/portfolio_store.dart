import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tinkoff_invest_api/model/currency.dart';
import 'package:tinkoff_invest_api/model/money_amount.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';
import 'package:tinkoff_invest/redux/protfolio_state_reducer.dart';
import 'package:tinkoff_invest/redux/state/portfolio_state.dart';

import 'epics/calculate_groups_epic.dart';
import 'epics/portfolio_item_epic.dart';
import 'epics/total_money_epic.dart';

class PortfolioStore extends Store<PortfolioState> implements Dispatcher {
  PortfolioStore(
    TotalAmountEpic totalAmountEpic,
    PortfolioItemsEpic portfolioItemsEpic,
    CalculateGroupsEpic calculateGroupsEpic,
  ) : super(reducePortfolioState,
            initialState: PortfolioState(
              amount: MoneyAmount(
                (b) => b
                  ..currency = Currency.rUB
                  ..value = 0,
              ),
              items: [],
              groups: [],
            ),
            middleware: [
              EpicMiddleware(totalAmountEpic.act),
              EpicMiddleware(portfolioItemsEpic.act),
              EpicMiddleware(calculateGroupsEpic.act),
            ]);
}
