import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/portfolio_store.dart';
import 'package:tinkoff_invest/redux/state/items_group.dart';

class PortfolioGroupWidget extends StatelessWidget {
  final ItemsGroup _group;
  final PortfolioStore _store;

  PortfolioGroupWidget(this._group, this._store) : super(key: ValueKey(_group));

  @override
  Widget build(BuildContext context) {
    Widget textWidget;
    if (_store.state.groupEditing == _group) {
      final controller = TextEditingController(text: _group.title);
      textWidget = TextField(
        controller: controller,
        autofocus: true,
      );
      Future(() => {
            controller.selection = TextSelection(
              baseOffset: 0,
              extentOffset: _group.title.length,
            )
          });
    } else {
      textWidget = Text(_group.title);
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