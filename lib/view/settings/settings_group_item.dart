import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';
import 'package:tinkoff_invest/redux/state/portfolio/items_group.dart';

class SettingsGroupItemWidget extends StatelessWidget {
  final ItemsGroup _group;
  final int _itemsAmount;
  final Dispatcher _dispatcher;

  const SettingsGroupItemWidget(
      this._group, this._itemsAmount, this._dispatcher);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(_group.title),
      subtitle: Text(
        _itemsAmount == 0 ? "Пусто" : "Позиций: $_itemsAmount",
        style: _itemsAmount == 0
            ? TextStyle(color: Colors.grey, fontWeight: FontWeight.w200)
            : null,
      ),
      trailing: Icon(Icons.more_horiz, color: Colors.black),
      onTap: () {
        _dispatcher.dispatch(EditGroup(_group));
      },
      onLongPress: () {
        final builder =
            (BuildContext context) => _deleteDialog(_itemsAmount > 0, context);
        if (Platform.isIOS) {
          showCupertinoDialog(context: context, builder: builder);
        } else {
          showDialog(context: context, builder: builder);
        }
      },
    );
  }

  Widget _deleteDialog(bool hasItems, BuildContext context) {
    final title = Text("Удалить группу?");
    final content = hasItems ? Text("Группа содержит некоторые позиции") : null;
    final actions = [
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text("Нет"),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
          _dispatcher.dispatch(DeleteGroup(_group.id));
        },
        child: Text("Да"),
      ),
    ];

    return Platform.isIOS
        ? CupertinoAlertDialog(title: title, content: content, actions: actions)
        : AlertDialog(title: title, content: content, actions: actions);
  }
}
