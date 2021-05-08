import 'package:flutter/material.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/app_store.dart';
import 'package:tinkoff_invest/redux/state/group_settings/group_settings_state.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_item.dart';
import 'package:tinkoff_invest/view/app_bar_button.dart';
import 'package:tinkoff_invest/view/group_settings/group_settings_portfolio_item.dart';
import 'package:tinkoff_invest/view/white_app_bar.dart';

class GroupSettingsWidget extends StatelessWidget {
  final AppStore _store;
  final GroupSettingsState _state;

  const GroupSettingsWidget(this._store, this._state);

  @override
  Widget build(BuildContext context) {
    final items = _store.state.items
        .where((it) => it.groupId == _state.group.id)
        .toList();
    return Scaffold(
      appBar: WhiteAppBar(
        title: Text(_state.group.title, style: TextStyle(color: Colors.black)),
        actions: _state.isEditMode
            ? [
                AppBarButton(_store, EditGroup(), Icons.clear,
                    color: Colors.red),
                AppBarButton(_store, EditGroup(), Icons.check,
                    color: Colors.green),
              ]
            : [AppBarButton(_store, EditGroup(), Icons.edit)],
      ),
      body: ImplicitlyAnimatedList(
        shrinkWrap: true,
        areItemsTheSame: (PortfolioItem oldItem, PortfolioItem newItem) =>
            oldItem == newItem,
        items: items,
        itemBuilder: (BuildContext context, Animation<double> animation,
            PortfolioItem item, int i) {
          return GroupSettingsPortfolioItem(items[i], _state.isEditMode);
        },
      ),
    );
  }
}
