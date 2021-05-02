import 'package:flutter/material.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:implicitly_animated_reorderable_list/transitions.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';
import 'package:tinkoff_invest/redux/state/app_state.dart';
import 'package:tinkoff_invest/redux/state/portfolio/items_group.dart';
import 'package:tinkoff_invest/view/white_app_bar.dart';
import 'package:tinkoff_invest/view/settings/settings_add_group_item.dart';
import 'package:tinkoff_invest/view/settings/settings_group_item.dart';

class SettingsWidget extends StatelessWidget {
  final Dispatcher _dispatcher;
  final AppState _state;

  SettingsWidget(this._dispatcher, this._state);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WhiteAppBar(
        title: const Text('Настройки', style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SettingsAddGroupWidget(_dispatcher),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: Text(
                "Группы",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ImplicitlyAnimatedList(
              shrinkWrap: true,
              items: _state.groups.toList(),
              itemBuilder: (BuildContext context, Animation<double> animation,
                  ItemsGroup item, int i) {
                return SizeFadeTransition(
                  sizeFraction: 0.7,
                  curve: Curves.easeInOut,
                  animation: animation,
                  child: SettingsGroupItemWidget(
                      item, _groupItemsAmount(item), _dispatcher),
                );
              },
              areItemsTheSame: (ItemsGroup oldItem, ItemsGroup newItem) {
                return oldItem == newItem;
              },
            ),
          ],
        ),
      ),
    );
  }

  int _groupItemsAmount(ItemsGroup group) {
    return _state.items.where((p) => p.groupId == group.id).length;
  }
}
