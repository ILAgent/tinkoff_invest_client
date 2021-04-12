import 'package:flutter/material.dart';
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
    final String currency = _store.state.amount.currency.currencySymbol();
    final double? amount = _group.actualPrice;
    final double? income = _group.income;
    final String incomePercent = income != null && amount != null ? " (" + (income / (amount - income) * 100).toStringAsFixed(2) + "%)" : "";

    final amountStr = amount == null ? "" : amount.toStringAsFixed(2) + currency;
    final incomeStr = income == null ? "" : income.toStringAsFixed(2) + currency;
    final incomeColor = income == null || income > 0 ? Colors.green : Colors.red;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Expanded(
            child: GroupEditableTitle(_group, _store),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                amountStr,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                incomeStr + incomePercent,
                style: TextStyle(fontSize: 12, color: incomeColor, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
