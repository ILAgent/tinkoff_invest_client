import 'package:flutter/material.dart';
import 'package:tinkoff_api/model/instrument_type.dart';
import 'package:tinkoff_api/model/portfolio_position.dart';

class PortfolioItemWidget extends StatelessWidget {
  final PortfolioPosition _position;

  const PortfolioItemWidget(this._position);

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
            _position.name.substring(0, 1),
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
                      _position.name,
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                  ),
                  SizedBox(width: 8),
                  Text("AAAAAA"),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    _position.instrumentType == InstrumentType.currency
                        ? _position.balance.toStringAsFixed(2)
                        : "${_position.lots} шт.",
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
