import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tinkoff_api/model/currency.dart';
import 'package:tinkoff_api/model/portfolio_position.dart';
import 'package:tinkoff_invest/di/di.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';
import 'package:tinkoff_invest/redux/state/portfolio_state.dart';
import 'package:tinkoff_invest/redux/protfolio_state_reducer.dart';

import 'epics/portfolio_item_epic.dart';
import 'epics/total_money_epic.dart';

class PortfolioStore extends Store<PortfolioState> implements Dispatcher {
  PortfolioStore()
      : super(reducePortfolioState,
            initialState: PortfolioState(
              (b) => b
                ..currency = Currency.rUB
                ..amount = 0
                ..positions = ListBuilder<PortfolioPosition>(),
            ),
            middleware: [
              EpicMiddleware(di.get<TotalAmountEpic>().act),
              EpicMiddleware(di.get<PortfolioItemsEpic>().act),
            ]);
}
