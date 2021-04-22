import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/app_store.dart';

class SettingsButtonWidget extends StatelessWidget {
  final AppStore _store;

  SettingsButtonWidget(this._store);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        customBorder: CircleBorder(),
        onTap: () {
          _store.dispatch(ShowSettings());
        },
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(Icons.settings),
        ),
      ),
    );
  }
}
