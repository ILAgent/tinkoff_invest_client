import 'dart:io';

import 'package:flutter/cupertino.dart';
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

  ItemsGroup get _group =>
      _store.state.groups.firstWhere((g) => g.id == _state.groupId);

  @override
  Widget build(BuildContext context) {
    final List<PortfolioListElement> items =
        !_state.isEditMode ? _itemsInGroup() : _allItems();
    final controller = TextEditingController(text: _group.title);
    return Scaffold(
      appBar: WhiteAppBar(
        title: _state.isEditMode
            ? _titleEdit(controller)
            : Text(_group.title, style: TextStyle(color: Colors.black)),
        actions: _state.isEditMode
            ? [
                AppBarButton(
                  _store,
                  Icons.clear,
                  color: Colors.red,
                  action: CancelGroupChanges(),
                ),
                AppBarButton(
                  _store,
                  Icons.check,
                  color: Colors.green,
                  onTap: () {
                    _store.dispatch(
                      ApplyGroupChanges(
                        _group.id,
                        controller.text,
                        _state.selectedItems,
                      ),
                    );
                  },
                ),
              ]
            : [AppBarButton(_store, Icons.edit, action: EditGroup())],
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
        .where((e) => !(e is ItemsGroup) || e.id != _group.id)
        .toList();
    final itemsInGroup = _itemsInGroup().map((e) => e.figi()).toList();
    list.sort((a, b) {
      return _sortOrder(a, itemsInGroup).compareTo(_sortOrder(b, itemsInGroup));
    });
    return list;
  }

  List<PortfolioItem> _itemsInGroup() =>
      _store.state.items.where((it) => it.groupId == _group.id).toList();

  int _sortOrder(
    PortfolioListElement element,
    List<String> itemsInGroup,
  ) {
    if (element is PortfolioItem && itemsInGroup.contains(element.figi())) {
      return -1;
    }
    return 0;
  }

  Widget _titleEdit(TextEditingController controller) {
    controller.selection =
        TextSelection(baseOffset: 0, extentOffset: controller.text.length);
    return Platform.isIOS
        ? CupertinoTextField(controller: controller, autofocus: true)
        : TextField(controller: controller, autofocus: true);
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
