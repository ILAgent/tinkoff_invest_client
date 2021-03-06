import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_item.dart';
import 'package:tinkoff_invest/utils/color_utils.dart';
import 'package:tinkoff_invest/utils/currency_utils.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

class PortfolioItemWidget extends StatelessWidget {
  final PortfolioItem _item;
  final double _leftPadding;

  PortfolioItemWidget(this._item, {double? leftPadding})
      : _leftPadding = leftPadding ?? 20,
        super(key: ValueKey(_item));

  @override
  Widget build(BuildContext context) {
    final balance =
        _item.portfolioPosition.instrumentType == InstrumentType.currency
            ? _item.portfolioPosition.balance.toStringAsFixed(2)
            : "${_item.portfolioPosition.lots} шт.";

    final amount = _item.actualPrice == null
        ? null
        : _item.actualPrice! * _item.portfolioPosition.balance;
    final amountStr = amount == null
        ? null
        : amount.toStringAsFixed(2) + _item.currency().currencySymbol();
    final incomePercent = amount == null || _item.income == null
        ? null
        : (_item.income! / (amount - _item.income!) * 100).toStringAsFixed(2) +
            "%";
    final income = _item.income == null
        ? null
        : _item.income!.toStringAsFixed(2) + _item.currency().currencySymbol();

    final incomeColor = _item.income == null || _item.income == 0
        ? Colors.black
        : _item.income! > 0
            ? Colors.green
            : Colors.red;
    return Container(
      padding: EdgeInsets.only(left: _leftPadding, right: 20),
      decoration: BoxDecoration(color: Colors.transparent),
      height: 50,
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: colorFor(_item.portfolioPosition.name),
              shape: BoxShape.circle,
            ),
            child: Text(
              _item.portfolioPosition.name.substring(0, 1),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        _item.portfolioPosition.name,
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        softWrap: false,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      amountStr ?? '',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        balance,
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                    ),
                    Text(
                      income == null ? '' : "$income ($incomePercent)",
                      style: TextStyle(fontSize: 12, color: incomeColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
