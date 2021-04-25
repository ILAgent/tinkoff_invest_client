import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/state/portfolio/items_group.dart';

class SettingsGroupItemWidget extends StatelessWidget {
  final ItemsGroup _group;

  const SettingsGroupItemWidget(this._group);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(_group.title),
      subtitle: Text("10 позиций"),
      trailing: Icon(Icons.more_horiz),
    );
  }
}
