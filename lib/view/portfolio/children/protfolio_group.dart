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
    return GestureDetector(
      onLongPress: () {
        /* prevent drag */
      },
      child: Container(
        color: _store.state.groupEditing == _group ? Colors.green : null,
        height: 30,
        alignment: Alignment.centerLeft,
        child: GestureDetector(
          onTap: () {
            _store.dispatch(EditGroup(_group));
          },
          child: Text(_group.title),
        ),
      ),
    );
  }
}
