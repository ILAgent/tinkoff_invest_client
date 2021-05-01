import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';
import 'package:tinkoff_invest/redux/state/app_state.dart';
import 'package:tinkoff_invest/redux/state/portfolio/items_group.dart';
import 'package:tinkoff_invest/view/settings/settings_group_item.dart';

class SettingsWidget extends StatelessWidget {
  final Dispatcher _dispatcher;
  final AppState _state;

  SettingsWidget(this._dispatcher, this._state);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
                leading: Icon(Icons.add, color: Colors.black),
                title: Text('Добавить группу'),
                onTap: () {
                  _dispatcher.dispatch(GoBack());
                  _dispatcher.dispatch(AddGroup());
                }),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: Text(
                "Группы",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ..._state.groups.map((g) =>
                SettingsGroupItemWidget(g, _groupItemsAmount(g), _dispatcher))
          ],
        ),
      ),
    );
  }

  int _groupItemsAmount(ItemsGroup group) {
    return _state.items.where((p) => p.groupId == group.id).length;
  }
}
