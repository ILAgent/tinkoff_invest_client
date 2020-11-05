import 'package:flutter/material.dart';
import 'package:tinkoff_api/model/instrument_type.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';
import 'package:tinkoff_invest/utils/currency_utils.dart';

class PortfolioItemWidget extends StatelessWidget {
  final PortfolioItem _item;

  const PortfolioItemWidget(this._item);

  @override
  Widget build(BuildContext context) {
    final amount = _item.actualPrice * _item.portfolioPosition.balance;
    final amountStr = amount.toStringAsFixed(2) +
        _item.portfolioPosition.averagePositionPrice.currency.currencySymbol();
    final balance =
        _item.portfolioPosition.instrumentType == InstrumentType.currency
            ? _item.portfolioPosition.balance.toStringAsFixed(2)
            : "${_item.portfolioPosition.lots} шт.";

    final incomePercent =
        (_item.income / (amount - _item.income) * 100).toStringAsFixed(2) +
            " %";

    final income = _item.income.toStringAsFixed(2) +
        _item.portfolioPosition.averagePositionPrice.currency.currencySymbol();
    final incomeColor = _item.income == 0
        ? Colors.black
        : _item.income > 0
            ? Colors.green
            : Colors.red;
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          alignment: Alignment.center,
          decoration:
              BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
          child: Text(
            _item.portfolioPosition.name.substring(0, 1),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
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
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    amountStr,
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
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                  ),
                  Text(
                    "$income ($incomePercent)",
                    style: TextStyle(fontSize: 12, color: incomeColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
