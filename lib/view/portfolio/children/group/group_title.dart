import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';
import 'package:tinkoff_invest/redux/state/portfolio/items_group.dart';

class GroupTitleWidget extends StatelessWidget {
  final ItemsGroup _group;
  final Dispatcher _dispatcher;

  GroupTitleWidget(this._group, this._dispatcher)
      : super(key: ValueKey(_group));

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        /* prevent drag */
      },
      child: Container(
        height: 30,
        alignment: Alignment.centerLeft,
        child: GestureDetector(
          onTap: () {
            _dispatcher.dispatch(EditGroup(_group));
          },
          child: Text(
            _group.title,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
