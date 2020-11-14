import 'package:flutter/widgets.dart';
import 'package:tinkoff_invest/redux/state/items_group.dart';

class PortfolioGroupWidget extends StatelessWidget {
  final ItemsGroup _group;

  PortfolioGroupWidget(this._group) : super(key: ValueKey(_group));

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {},
      child: Container(
        height: 30,
        alignment: Alignment.center,
        child: Text(_group.title),
      ),
    );
  }
}
