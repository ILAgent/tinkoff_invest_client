import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tinkoff_api/model/currency.dart';
import 'package:tinkoff_api/model/money_amount.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';
import 'package:tinkoff_invest/redux/protfolio_state_reducer.dart';
import 'package:tinkoff_invest/redux/state/items_group.dart';
import 'package:tinkoff_invest/redux/state/portfolio_state.dart';
import 'package:uuid/uuid.dart';

import 'epics/portfolio_item_epic.dart';
import 'epics/total_money_epic.dart';

class PortfolioStore extends Store<PortfolioState> implements Dispatcher {
  PortfolioStore(
      TotalAmountEpic totalAmountEpic, PortfolioItemsEpic portfolioItemsEpic)
      : super(reducePortfolioState,
            initialState: PortfolioState(
              amount: MoneyAmount((b) => b
                ..currency = Currency.rUB
                ..value = 0),
              items: [],
              groups: [ItemsGroup(title: 'Всё моё', id: Uuid().v1())],
            ),
            middleware: [
              EpicMiddleware(totalAmountEpic.act),
              EpicMiddleware(portfolioItemsEpic.act),
            ]);
}
