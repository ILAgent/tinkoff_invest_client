import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/app_store.dart';
import 'package:tinkoff_invest/redux/state/portfolio/items_group.dart';
import 'package:tinkoff_invest/utils/currency_utils.dart';

class PortfolioGroupWidget extends StatelessWidget {
  final ItemsGroup _group;
  final AppStore _store;

  PortfolioGroupWidget(this._group, this._store) : super(key: ValueKey(_group));

  @override
  Widget build(BuildContext context) {
    final String currency = _store.state.amount.currency.currencySymbol();
    final double? amount = _group.actualPrice;
    final double? income = _group.income;
    final String incomePercent = income != null && amount != null
        ? " (" + (income / (amount - income) * 100).toStringAsFixed(2) + "%)"
        : "";

    final amountStr =
        amount == null ? "" : amount.toStringAsFixed(2) + currency;
    final incomeStr =
        income == null ? "" : income.toStringAsFixed(2) + currency;
    final incomeColor =
        income == null || income > 0 ? Colors.green : Colors.red;

    return ListTile(
      title: Padding(
        padding: EdgeInsets.only(left: 4),
        child: Text(
          _group.title,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      trailing: IntrinsicHeight(
        child: Padding(
          padding: const EdgeInsets.only(right: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                amountStr,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                incomeStr + incomePercent,
                style: TextStyle(
                    fontSize: 12,
                    color: incomeColor,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        _store.dispatch(OpenGroupSettings(_group));
      },
      onLongPress: () {
        /* prevent drag */
      },
    );
  }
}
