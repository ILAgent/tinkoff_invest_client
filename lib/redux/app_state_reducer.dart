import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/app_state.dart';
import 'package:tinkoff_invest/redux/state/group_settings/group_settings_state.dart';
import 'package:tinkoff_invest/redux/state/portfolio/items_group.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_item.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_state.dart';
import 'package:tinkoff_invest/redux/state/screen_state.dart';
import 'package:tinkoff_invest/redux/state/setting/settings_state.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

AppState reduceAppState(AppState state, dynamic action) {
  final reducedState = state.rebuild((b) => b
    ..amount = _reduceAmount(state.amount, action).toBuilder()
    ..items = _reduceItems(state.items, action).toBuilder()
    ..groups = _reduceGroups(state.groups, action).toBuilder()
    ..backStack = _reduceBackstack(state, action).toBuilder());
  print("$action\n");
  print("$reducedState\n");
  return reducedState;
}

BuiltList<ScreenState> _reduceBackstack(AppState appState, dynamic action) {
  if (action is GoBack) {
    if (appState.backStack.length <= 1) return appState.backStack;
    return BuiltList.from(
        appState.backStack.take(appState.backStack.length - 1));
  }
  if (action is ShowSettings) {
    return BuiltList.from([...appState.backStack, SettingsState()]);
  }
  if (action is OpenGroupSettings) {
    return BuiltList.from([
      ...appState.backStack,
      GroupSettingsState((b) => b
        ..groupId = action.groupId
        ..isEditMode = false
        ..selectedItems = BuiltList<String>().toBuilder()),
    ]);
  }
  if (action is OpenPortfolio) {
    return BuiltList.from([PortfolioState()]);
  }
  return BuiltList.from(
      appState.backStack.map((screen) => screen.reduce(action, appState)));
}

MoneyAmount _reduceAmount(MoneyAmount amount, dynamic action) {
  if (action is ChangeTotalAmount) {
    return action.amount;
  }
  return amount;
}

BuiltList<PortfolioItem> _reduceItems(
    BuiltList<PortfolioItem> items, dynamic action) {
  if (action is InitPortfolioItems) {
    return BuiltList.from(action.items.map((item) {
      final oldItem =
          items.firstWhereOrNull((old) => old.figi() == item.figi());
      return item.rebuild((b) => b..groupId = oldItem?.groupId);
    }));
  }
  return BuiltList.from(
    items.map((item) => _reduceItem(item, action)),
  );
}

PortfolioItem _reduceItem(PortfolioItem item, dynamic action) {
  if (action is UpdatePortfolioItemValues && action.figi == item.figi()) {
    return item.rebuild(
      (b) => b
        ..income = action.income
        ..actualPrice = action.actualPrice,
    );
  }
  if (action is UpdatePortfolioItemGroup && action.figi == item.figi()) {
    return item.rebuild((b) => b..groupId = action.groupId);
  }
  if (action is DeleteGroup && item.groupId == action.groupId) {
    return item.rebuild((b) => b..groupId = null);
  }
  if (action is ApplyGroupChanges) {
    return item.rebuild((b) {
      if (item.groupId == action.id && !action.figis.contains(item.figi())) {
        b.groupId = null;
      }
      if (action.figis.contains(item.figi())) {
        b.groupId = action.id;
      }
    });
  }
  return item;
}

BuiltList<ItemsGroup> _reduceGroups(
    BuiltList<ItemsGroup> groups, dynamic action) {
  if (action is AddGroup) {
    return BuiltList.from([...groups, action.group]);
  }
  if (action is DeleteGroup) {
    return BuiltList.from(groups.where((g) => g.id != action.groupId));
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
  if (action is ApplyGroupChanges && action.id == group.id) {
    return group.rebuild((b) => b..title = action.title);
  }
  return group;
}
