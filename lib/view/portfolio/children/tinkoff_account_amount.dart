import 'package:flutter/widgets.dart';
import 'package:tinkoff_api/model/currency.dart';
import 'package:tinkoff_invest/redux/portfolio_state.dart';

class TinkoffAccountAmountWidget extends StatelessWidget {
  final PortfolioState _state;

  TinkoffAccountAmountWidget(this._state);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: _state.amount.toString()),
          TextSpan(text: _currency(_state)),
        ],
      ),
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
    );
  }

  String _currency(PortfolioState state) {
    switch (state.currency) {
      case Currency.rUB:
        return " rub";
      case Currency.eUR:
        return " eur";
      case Currency.uSD:
        return " usd";
      default:
        throw ArgumentError(state.currency);
    }
  }
}
