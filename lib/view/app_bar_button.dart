import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tinkoff_invest/redux/app_store.dart';

class AppBarButton extends StatelessWidget {
  final AppStore _store;
  final dynamic _action;
  final IconData _icon;
  final Color _color;
  final GestureTapCallback? _onTap;

  AppBarButton(this._store, this._icon,
      {Color? color, GestureTapCallback? onTap, dynamic action})
      : _color = color ?? Colors.black,
        _onTap = onTap,
        _action = action;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        customBorder: CircleBorder(),
        onTap: () {
          _onTap?.call();
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
