import 'package:redux_epics/redux_epics.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/portfolio_state.dart';
import 'package:tinkoff_invest/services/total_money_calculator.dart';
import 'package:tinkoff_invest_api/model/currency.dart';

class TotalAmountEpic {
  final TotalMoneyCalculator _totalMoneyCalculator;

  TotalAmountEpic(this._totalMoneyCalculator);

  Stream<dynamic> act(
    Stream<dynamic> actions,
    EpicStore<PortfolioState> store,
  ) {
    return actions.where((action) => action is TogglePortfolioCurrency || action is InitAction).asyncMap(
      (action) async {
        print("TogglePortfolioCurrency");
        Currency targetCur = Currency.rUB;
        if (action is TogglePortfolioCurrency) {
          final state = store.state;
          switch (state.amount.currency) {
            case Currency.rUB:
              targetCur = Currency.uSD;
              break;
            case Currency.uSD:
              targetCur = Currency.eUR;
              break;
          }
        }
        final total = await _totalMoneyCalculator.totalMoney(targetCur);
        return ChangeTotalAmount(total);
      },
    );
  }
}
