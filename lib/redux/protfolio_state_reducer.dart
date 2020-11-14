import 'package:tinkoff_api/model/money_amount.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/items_group.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';
import 'package:tinkoff_invest/redux/state/portfolio_state.dart';
import 'package:uuid/uuid.dart';

PortfolioState reducePortfolioState(PortfolioState state, dynamic action) {
  return state.copyWith(
    amount: _reduceAmount(state.amount, action),
    items: _reduceItems(state.items, action),
    groups: _reduceGroups(state.groups, action),
    groupEditing: _reduceGroupEditing(state.groupEditing, action),
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
  return items.map((item) => _reduceItem(item, action)).toList();
}

PortfolioItem _reduceItem(PortfolioItem item, dynamic action) {
  if (action is UpdatePortfolioItem &&
      action.item.portfolioPosition.figi == item.portfolioPosition.figi) {
    return action.item;
  }
  return item;
}

List<ItemsGroup> _reduceGroups(List<ItemsGroup> groups, dynamic action) {
  if (action is AddGroup) {
    return [
      ...groups,
      ItemsGroup(title: 'Новая группа', id: Uuid().v1()),
    ];
  }
  return groups;
}

ItemsGroup _reduceGroupEditing(ItemsGroup groupEditing, dynamic action) {
  return groupEditing;
}
