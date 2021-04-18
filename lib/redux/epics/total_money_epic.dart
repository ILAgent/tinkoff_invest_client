import 'package:redux_epics/redux_epics.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_state.dart';
import 'package:tinkoff_invest/services/total_money_calculator.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

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
        Currency targetCur = Currency.RUB;
        if (action is TogglePortfolioCurrency) {
          final state = store.state;
          switch (state.amount.currency) {
            case Currency.RUB:
              targetCur = Currency.USD;
              break;
            case Currency.USD:
              targetCur = Currency.EUR;
              break;
          }
        }
        final total = await _totalMoneyCalculator.sumPositionsAmount(targetCur);
        return ChangeTotalAmount(total);
      },
    );
  }
}
