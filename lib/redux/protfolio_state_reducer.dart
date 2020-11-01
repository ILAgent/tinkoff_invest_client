import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/portfolio_state.dart';

PortfolioState reducePortfolioState(PortfolioState state, dynamic action) {
  if (action is ChangeTotalAmount) {
    return state.rebuild(
      (b) => b
        ..currency = action.amount.currency
        ..amount = action.amount.value,
    );
  }
  return state;
}
