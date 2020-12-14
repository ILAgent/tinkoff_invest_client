import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';
import 'package:tinkoff_invest/redux/protfolio_state_reducer.dart';
import 'package:tinkoff_invest/redux/state/portfolio_state.dart';
import 'package:tinkoff_invest/services/storage/storage.dart';

import 'epics/calculate_groups_epic.dart';
import 'epics/portfolio_item_epic.dart';
import 'epics/total_money_epic.dart';

class PortfolioStore extends Store<PortfolioState> implements Dispatcher {
  PortfolioStore(TotalAmountEpic totalAmountEpic, PortfolioItemsEpic portfolioItemsEpic, CalculateGroupsEpic calculateGroupsEpic, Storage storage)
      : super(
          reducePortfolioState,
          initialState: storage.state,
          middleware: [
            EpicMiddleware(totalAmountEpic.act),
            EpicMiddleware(portfolioItemsEpic.act),
            EpicMiddleware(calculateGroupsEpic.act),
          ],
        );
}
