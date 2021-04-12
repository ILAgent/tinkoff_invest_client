import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/portfolio_store.dart';
import 'package:tinkoff_invest/redux/store_extension.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

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
          stream: _store.states.map((it) => it.amount.currency).distinct(),
          builder: (context, snapshot) {
            return Text.rich(
              TextSpan(
                text: "Счёт Тинькофф",
                children: [
                  TextSpan(
                    text: snapshot.data == null ? null : _currencyToName(snapshot.data!),
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
      case Currency.RUB:
        return " в рублях";
      case Currency.EUR:
        return " в евро";
      case Currency.USD:
        return " в долларах";
      default:
        throw ArgumentError(currency);
    }
  }
}
