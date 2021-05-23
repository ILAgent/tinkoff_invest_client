import 'package:flutter/material.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/app_store.dart';
import 'package:tinkoff_invest/redux/state/group_settings/group_settings_state.dart';
import 'package:tinkoff_invest/redux/state/portfolio/items_group.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_item.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_list_element.dart';
import 'package:tinkoff_invest/view/app_bar_button.dart';
import 'package:tinkoff_invest/view/group_settings/group_settings_portfolio_item.dart';
import 'package:tinkoff_invest/view/list_item_transition.dart';
import 'package:tinkoff_invest/view/portfolio/children/portfolio_items_list.dart';
import 'package:tinkoff_invest/view/white_app_bar.dart';

class GroupSettingsWidget extends StatelessWidget
    implements PortfolioListElementVisitor<Widget> {
  final AppStore _store;
  final GroupSettingsState _state;

  const GroupSettingsWidget(this._store, this._state);

  @override
  Widget build(BuildContext context) {
    final List<PortfolioListElement> items =
        !_state.isEditMode ? _itemsInGroup() : _allItems();
    return Scaffold(
      appBar: WhiteAppBar(
        title: Text(_state.group.title, style: TextStyle(color: Colors.black)),
        actions: _state.isEditMode
            ? [
                AppBarButton(
                  _store,
                  CancelGroupChanges(),
                  Icons.clear,
                  color: Colors.red,
                ),
                AppBarButton(
                  _store,
                  ApplyGroupChanges(_state.group.id, _state.group.title,
                      _state.selectedItems),
                  Icons.check,
                  color: Colors.green,
                ),
              ]
            : [AppBarButton(_store, EditGroup(), Icons.edit)],
      ),
      body: ImplicitlyAnimatedList(
        shrinkWrap: true,
        areItemsTheSame:
            (PortfolioListElement oldItem, PortfolioListElement newItem) =>
                oldItem == newItem,
        items: items,
        itemBuilder: (BuildContext context, Animation<double> animation,
            PortfolioListElement item, int i) {
          return ListItemTransition(
            animation,
            child: item.acceptVisitor(this),
          );
        },
      ),
    );
  }

  List<PortfolioListElement> _allItems() {
    final list = appStateToItemsList(_store.state)
        .where((e) => !(e is ItemsGroup) || e.id != _state.group.id)
        .toList();
    final itemsInGroup = _itemsInGroup().map((e) => e.figi()).toList();
    list.sort((a, b) {
      return _sortOrder(a, itemsInGroup).compareTo(_sortOrder(b, itemsInGroup));
    });
    return list;
  }

  List<PortfolioItem> _itemsInGroup() =>
      _store.state.items.where((it) => it.groupId == _state.group.id).toList();

  int _sortOrder(
    PortfolioListElement element,
    List<String> itemsInGroup,
  ) {
    if (element is PortfolioItem && itemsInGroup.contains(element.figi())) {
      return -1;
    }
    return 0;
  }

  @override
  Widget visitGroup(ItemsGroup itemsGroup) {
    return Text(itemsGroup.title);
  }

  @override
  Widget visitItem(PortfolioItem item) {
    return GroupSettingsPortfolioItem(item, _state, _store);
  }
}
