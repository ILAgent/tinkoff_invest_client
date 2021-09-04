import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tinkoff_invest/redux/app_state_reducer.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';
import 'package:tinkoff_invest/redux/epics/invalidate_epic.dart';
import 'package:tinkoff_invest/redux/epics/register_token_epic.dart';
import 'package:tinkoff_invest/redux/epics/save_state_epic.dart';
import 'package:tinkoff_invest/redux/state/app_state.dart';
import 'package:tinkoff_invest/services/storage/storage.dart';

import 'epics/calculate_groups_epic.dart';
import 'epics/portfolio_item_epic.dart';
import 'epics/total_money_epic.dart';

class AppStore extends Store<AppState> implements Dispatcher {
  AppStore(
    TotalAmountEpic totalAmountEpic,
    PortfolioItemsEpic portfolioItemsEpic,
    CalculateGroupsEpic calculateGroupsEpic,
    SaveSateEpic saveSateEpic,
    InvalidateEpic invalidateEpic,
    RegisterTokenEpic registerTokenEpic,
    Storage storage,
  ) : super(
          reduceAppState,
          initialState: storage.state,
          middleware: [
            EpicMiddleware(totalAmountEpic.act),
            EpicMiddleware(portfolioItemsEpic.act),
            EpicMiddleware(calculateGroupsEpic.act),
            EpicMiddleware(saveSateEpic.act),
            EpicMiddleware(invalidateEpic.act),
            EpicMiddleware(registerTokenEpic.act),
          ],
        );
}
