import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tinkoff_invest/redux/app_store.dart';

class AppBarButton extends StatelessWidget {
  final AppStore _store;
  final dynamic _action;
  final IconData _icon;
  final Color _color;

  AppBarButton(this._store, this._action, this._icon, {Color? color})
      : _color = color ?? Colors.black;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        customBorder: CircleBorder(),
        onTap: () {
          _store.dispatch(_action);
        },
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(_icon, color: _color),
        ),
      ),
    );
  }
}
