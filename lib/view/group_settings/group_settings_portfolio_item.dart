import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';
import 'package:tinkoff_invest/redux/state/group_settings/group_settings_state.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_item.dart';
import 'package:tinkoff_invest/view/portfolio/children/portfolio_item.dart';

class GroupSettingsPortfolioItem extends StatelessWidget {
  final PortfolioItem _item;
  final bool _isEditMode;
  final bool _isSelected;
  final Dispatcher _dispatcher;

  GroupSettingsPortfolioItem(
      this._item, GroupSettingsState state, this._dispatcher)
      : _isEditMode = state.isEditMode,
        _isSelected = state.selectedItems.contains(_item.figi());

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: _isEditMode ? 1 : 0,
          child: Checkbox(
              value: _isSelected,
              onChanged: (selected) {
                _dispatcher.dispatch(
                    ToggleItemInGroupSettings(_item.figi(), !_isSelected));
              }),
        ),
        AnimatedPadding(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.only(left: _isEditMode ? 50 : 20),
          child: PortfolioItemWidget(_item, leftPadding: 0),
        ),
      ],
    );
  }
}