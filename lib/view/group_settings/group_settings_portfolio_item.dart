import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_item.dart';
import 'package:tinkoff_invest/view/portfolio/children/portfolio_item.dart';

class GroupSettingsPortfolioItem extends StatefulWidget {
  final PortfolioItem _item;
  final bool _isEditMode;

  GroupSettingsPortfolioItem(this._item, this._isEditMode);

  @override
  _GroupSettingsPortfolioItemState createState() =>
      _GroupSettingsPortfolioItemState();
}

class _GroupSettingsPortfolioItemState
    extends State<GroupSettingsPortfolioItem> {
  bool _selected = false;

  _GroupSettingsPortfolioItemState();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: widget._isEditMode ? 1 : 0,
          child: Checkbox(
              value: _selected,
              onChanged: (selected) {
                setState(() {
                  _selected = !_selected;
                });
              }),
        ),
        AnimatedPadding(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.only(left: widget._isEditMode ? 50 : 20),
          child: PortfolioItemWidget(widget._item, leftPadding: 0),
        ),
      ],
    );
  }
}
