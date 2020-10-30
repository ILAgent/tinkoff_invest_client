import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tinkoff_api/model/currency.dart';
import 'package:tinkoff_invest/redux/portfolio_state.dart';

class TinkoffAccountTileWidget extends StatelessWidget {
  final PortfolioState _state;

  TinkoffAccountTileWidget(this._state);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Счёт Тинькофф",
        children: [
          TextSpan(
            text: _currency(_state),
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
      style: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  String _currency(PortfolioState state) {
    switch (state.currency) {
      case Currency.rUB:
        return " в рублях";
      case Currency.eUR:
        return " в евро";
      case Currency.uSD:
        return " в долларах";
      default:
        throw ArgumentError(state.currency);
    }
  }
}
