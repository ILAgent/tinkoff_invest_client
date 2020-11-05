import 'package:flutter/material.dart';
import 'package:tinkoff_api/model/instrument_type.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';
import 'package:tinkoff_invest/utils/currency_utils.dart';

class PortfolioItemWidget extends StatelessWidget {
  final PortfolioItem _item;

  const PortfolioItemWidget(this._item);

  @override
  Widget build(BuildContext context) {
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
                  Text((_item.actualPrice * _item.portfolioPosition.balance)
                          .toStringAsFixed(2) +
                      _item.portfolioPosition.averagePositionPrice.currency
                          .currencySymbol()),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    _item.portfolioPosition.instrumentType ==
                            InstrumentType.currency
                        ? _item.portfolioPosition.balance.toStringAsFixed(2)
                        : "${_item.portfolioPosition.lots} шт.",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
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
