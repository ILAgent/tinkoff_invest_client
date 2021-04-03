import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tinkoff_invest/redux/portfolio_store.dart';
import 'package:tinkoff_invest/redux/state/items_group.dart';
import 'package:tinkoff_invest/utils/currency_utils.dart';
import 'package:tinkoff_invest/view/portfolio/children/group/group_editable_title.dart';

class PortfolioGroupWidget extends StatelessWidget {
  final ItemsGroup _group;
  final PortfolioStore _store;

  PortfolioGroupWidget(this._group, this._store) : super(key: ValueKey(_group));

  @override
  Widget build(BuildContext context) {
    final currency = _store.state.amount.currency.currencySymbol();
    final amountStr = _group.actualPrice?.toStringAsFixed(2) ?? '_' + currency;
    final incomeStr = _group.income?.toStringAsFixed(2) ?? '_' + currency;
    final incomeColor =
        _group.income == null || _group.income! > 0 ? Colors.green : Colors.red;
    return Row(
      children: [
        Expanded(
          child: GroupEditableTitle(_group, _store),
        ),
        Column(
          children: [
            Text(
              amountStr,
              style: TextStyle(fontSize: 16),
            ),
            Text(
              incomeStr,
              style: TextStyle(fontSize: 12, color: incomeColor),
            ),
          ],
        ),
      ],
    );
  }
}
