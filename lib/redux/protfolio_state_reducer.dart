import 'package:built_collection/built_collection.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/items_group.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';
import 'package:tinkoff_invest/redux/state/portfolio_state.dart';
import 'package:tinkoff_invest_api/model/money_amount.dart';

PortfolioState reducePortfolioState(PortfolioState state, dynamic action) {
  return state.rebuild(
    (b) => b
      ..amount = _reduceAmount(state.amount, action).toBuilder()
      ..items = _reduceItems(state.items, action).toBuilder()
      ..groups = _reduceGroups(state.groups, action).toBuilder()
      ..groupEditing = _reduceGroupEditing(state.groupEditing, action)?.toBuilder(),
  );
}

MoneyAmount _reduceAmount(MoneyAmount amount, dynamic action) {
  if (action is ChangeTotalAmount) {
    return action.amount;
  }
  return amount;
}

BuiltList<PortfolioItem> _reduceItems(BuiltList<PortfolioItem> items, dynamic action) {
  if (action is UpdatePortfolioItems) {
    return BuiltList.from(action.items);
  }
  return BuiltList.from(
    items.map((item) => _reduceItem(item, action)),
  );
}

PortfolioItem _reduceItem(PortfolioItem item, dynamic action) {
  if (action is UpdatePortfolioItem && action.item.portfolioPosition.figi == item.portfolioPosition.figi) {
    return action.item;
  }
  return item;
}

BuiltList<ItemsGroup> _reduceGroups(BuiltList<ItemsGroup> groups, dynamic action) {
  if (action is AddGroup) {
    return BuiltList.from([
      ...groups,
      action.group,
    ]);
  }
  return BuiltList.from(groups.map((e) => _reduceGroup(e, action)));
}

ItemsGroup _reduceGroup(ItemsGroup group, dynamic action) {
  if (action is UpdateGroupTitle && group.id == action.id) {
    return group.rebuild((b) => b..title = action.title);
  }
  if (action is UpdateGroupAmounts && group.id == action.id) {
    return group.rebuild((b) => b
      ..actualPrice = action.amount
      ..income = action.income);
  }
  return group;
}

ItemsGroup _reduceGroupEditing(ItemsGroup groupEditing, dynamic action) {
  if (action is EditGroup) {
    return action.group;
  }
  if (action is AddGroup) {
    return action.group;
  }
  if (action is UpdateGroupTitle) {
    return null;
  }
  return groupEditing;
}
