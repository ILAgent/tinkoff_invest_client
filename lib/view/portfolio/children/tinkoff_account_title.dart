import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tinkoff_api/model/currency.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/portfolio_store.dart';
import 'package:tinkoff_invest/redux/store_extension.dart';

class TinkoffAccountTileWidget extends StatelessWidget {
  final PortfolioStore _store;

  TinkoffAccountTileWidget(this._store);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _store.dispatch(TogglePortfolioCurrency());
      },
      child: StreamBuilder<Currency>(
          stream: _store.states.map((it) => it.currency).distinct(),
          builder: (context, snapshot) {
            return Text.rich(
              TextSpan(
                text: "Счёт Тинькофф",
                children: [
                  TextSpan(
                    text: _currencyToName(snapshot.data),
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
          }),
    );
  }

  String _currencyToName(Currency currency) {
    switch (currency) {
      case Currency.rUB:
        return " в рублях";
      case Currency.eUR:
        return " в евро";
      case Currency.uSD:
        return " в долларах";
      default:
        throw ArgumentError(currency);
    }
  }
}
