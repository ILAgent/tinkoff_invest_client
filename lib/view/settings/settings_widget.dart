import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/app_store.dart';
import 'package:tinkoff_invest/view/portfolio/children/setting_button.dart';

class SettingsWidget extends StatelessWidget {
  final AppStore _store;

  const SettingsWidget(this._store);

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
          children: [
            ListTile(
                leading: Icon(Icons.add),
                title: Text('Добавить группу'),
                onTap: () {
                  _store.dispatch(GoBack());
                  _store.dispatch(AddGroup());
                }),
          ],
        ),
      ),
    );
  }
}
