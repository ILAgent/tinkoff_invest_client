import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/app_store.dart';
import 'package:tinkoff_invest/redux/state/group_settings/group_settings_state.dart';
import 'package:tinkoff_invest/view/app_bar_button.dart';
import 'package:tinkoff_invest/view/white_app_bar.dart';

class GroupSettingsWidget extends StatelessWidget {
  final AppStore _store;
  final GroupSettingsState _state;

  const GroupSettingsWidget(this._store, this._state);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WhiteAppBar(
        title: Text(_state.group.title, style: TextStyle(color: Colors.black)),
        actions: [AppBarButton(_store, EditGroup(), Icons.edit)],
      ),
    );
  }
}
