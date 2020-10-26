import 'package:redux/redux.dart';
import 'package:tinkoff_api/model/currency.dart';
import 'package:tinkoff_invest/redux/portfolio_state.dart';

import 'protfolio_state_reducer.dart';

final portfolioStore = Store<PortfolioState>(
  reducePortfolioState,
  initialState: PortfolioState((b) => b
    ..currency = Currency.rUB
    ..amount = 123456.78),
);
