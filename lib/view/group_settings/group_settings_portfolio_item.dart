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
    return Row(
      children: [
        if (widget._isEditMode)
          Checkbox(
              value: _selected,
              onChanged: (selected) {
                setState(() {
                  _selected = !_selected;
                });
              }),
        Expanded(child: PortfolioItemWidget(widget._item, leftPadding: 0)),
      ],
    );
  }
}
