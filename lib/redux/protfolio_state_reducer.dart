import 'package:tinkoff_api/model/money_amount.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';
import 'package:tinkoff_invest/redux/state/portfolio_state.dart';

PortfolioState reducePortfolioState(PortfolioState state, dynamic action) {
  return state.copyWith(
    amount: _reduceAmount(state.amount, action),
    items: _reduceItems(state.items, action),
  );
}

MoneyAmount _reduceAmount(MoneyAmount amount, dynamic action) {
  if (action is ChangeTotalAmount) {
    return action.amount;
  }
  return amount;
}

List<PortfolioItem> _reduceItems(List<PortfolioItem> items, dynamic action) {
  if (action is UpdatePortfolioItems) {
    return action.items;
  }
  return items;
}
