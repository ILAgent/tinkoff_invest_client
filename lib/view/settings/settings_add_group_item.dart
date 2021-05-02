import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';

class SettingsAddGroupWidget extends StatelessWidget {
  final Dispatcher _dispatcher;

  const SettingsAddGroupWidget(this._dispatcher) : super();

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(Icons.add, color: Colors.black),
        title: Text('Добавить группу'),
        onTap: () {
          final builder = (BuildContext context) => _inputNameDialog(context);
          if (Platform.isIOS) {
            showCupertinoDialog(context: context, builder: builder);
          } else {
            showDialog(context: context, builder: builder);
          }
        });
  }

  Widget _inputNameDialog(BuildContext context) {
    final title = Text('Введите название группы');
    final defaultTitle = 'Новая группа';
    final controller = TextEditingController(text: defaultTitle);
    controller.selection =
        TextSelection(baseOffset: 0, extentOffset: defaultTitle.length);
    final content = Platform.isIOS
        ? CupertinoTextField(controller: controller, autofocus: true)
        : TextField(controller: controller, autofocus: true);
    final actions = [
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text("Отмена"),
      ),
      TextButton(
        onPressed: () {
          if (controller.text.isNotEmpty) {
            Navigator.of(context).pop();
            _dispatcher.dispatch(AddGroup(controller.text));
          }
        },
        child: Text("Да"),
      ),
    ];

    return Platform.isIOS
        ? CupertinoAlertDialog(title: title, content: content, actions: actions)
        : AlertDialog(title: title, content: content, actions: actions);
  }
}
