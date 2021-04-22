import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/app_store.dart';
import 'package:tinkoff_invest/redux/state/portfolio/items_group.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_state.dart';

class GroupEditableTitle extends StatelessWidget {
  final ItemsGroup _group;
  final AppStore _store;
  final PortfolioState _state;

  GroupEditableTitle(this._group, this._store, this._state)
      : super(key: ValueKey(_group));

  @override
  Widget build(BuildContext context) {
    Widget textWidget;
    if (_state.groupEditing == _group) {
      final controller = TextEditingController(
        text: _group.title,
      );
      textWidget = Focus(
        onFocusChange: (hasFocus) {
          if (!hasFocus) {
            _store.dispatch(
              // todo doesn't work when tap groups one by one
              // todo fix focus on ios 14
              UpdateGroupTitle(title: controller.text, id: _group.id),
            );
          }
        },
        // todo FIX overflow
        child: TextField(
          controller: controller,
          autofocus: true,
        ),
      );
      Future(() => {
            controller.selection = TextSelection(
              baseOffset: 0,
              extentOffset: _group.title.length,
            )
          });
    } else {
      textWidget = Text(
        _group.title,
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      );
    }
    return GestureDetector(
      onLongPress: () {
        /* prevent drag */
      },
      child: Container(
        height: 30,
        alignment: Alignment.centerLeft,
        child: GestureDetector(
          onTap: () {
            _store.dispatch(EditGroup(_group));
          },
          child: textWidget,
        ),
      ),
    );
  }
}
