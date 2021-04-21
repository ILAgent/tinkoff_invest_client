import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/portfolio_store.dart';

class SettingsWidget extends StatelessWidget {
  final AppStore _store;

  const SettingsWidget(this._store);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            ListTile(
                leading: Icon(Icons.add),
                title: Text('Добавить группу'),
                onTap: () {
                  _store.dispatch(AddGroup());
                  Navigator.of(context).pop();
                }),
          ],
        ),
      ),
    );
  }
}
