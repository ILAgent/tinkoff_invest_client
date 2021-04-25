import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/state/portfolio/items_group.dart';

class SettingsGroupItemWidget extends StatelessWidget {
  final ItemsGroup _group;
  final int _itemsAmount;

  const SettingsGroupItemWidget(this._group, this._itemsAmount);

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
      onTap: () {},
      onLongPress: () {
        showDialog(
          context: context,
          builder: (context) => _deleteDialog(_itemsAmount > 0, context),
        );
      },
    );
  }

  AlertDialog _deleteDialog(bool hasItems, BuildContext context) {
    return AlertDialog(
      title: Text("Удалить группу?"),
      content: hasItems ? Text("Группа содержит некоторые позиции") : null,
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Нет"),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Да"),
        ),
      ],
    );
  }
}
