import 'package:flutter/widgets.dart';
import 'package:tinkoff_invest_api/model/money_amount.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/portfolio_store.dart';
import 'package:tinkoff_invest/redux/store_extension.dart';
import 'package:tinkoff_invest/utils/currency_utils.dart';

class TinkoffAccountAmountWidget extends StatelessWidget {
  final PortfolioStore _store;

  TinkoffAccountAmountWidget(this._store);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _store.dispatch(TogglePortfolioCurrency());
      },
      child: StreamBuilder<MoneyAmount>(
          stream: _store.states.map((event) => event.amount).distinct(),
          builder: (context, snapshot) {
            final state = snapshot.data;
            return Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: state?.value?.toStringAsFixed(2)),
                  TextSpan(text: state?.currency?.currencySymbol()),
                ],
              ),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            );
          }),
    );
  }
}
