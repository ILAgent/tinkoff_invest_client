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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _position.name,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            SizedBox(height: 4),
            Text(
              _position.instrumentType == InstrumentType.currency
                  ? _position.balance.toStringAsFixed()
                  : "${_position.lots} шт.",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
            ),
          ],
        )
      ],
    );
  }
}
