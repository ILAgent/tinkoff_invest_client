import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/portfolio_state.dart';

PortfolioState reducePortfolioState(PortfolioState state, dynamic action) {
  if (action is ChangeTotalAmount) {
    return state.copyWith(
      currency: action.amount.currency,
      amount: action.amount.value,
    );
  } else if (action is UpdatePortfolioItems) {
    return state.copyWith(
      items: action.items,
    );
  }
  return state;
}
