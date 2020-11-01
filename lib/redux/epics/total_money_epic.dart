import 'package:redux_epics/redux_epics.dart';
import 'package:tinkoff_api/model/currency.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/portfolio_state.dart';
import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest/services/api_service_extension.dart';

class TotalAmountEpic {
  final ApiService _apiService;

  TotalAmountEpic(this._apiService);

  Stream<dynamic> act(
    Stream<dynamic> actions,
    EpicStore<PortfolioState> store,
  ) {
    return actions
        .where((action) =>
            action is TogglePortfolioCurrency || action is InitAction)
        .asyncMap(
      (action) async {
        print("TogglePortfolioCurrency");
        Currency targetCur = Currency.rUB;
        if (action is TogglePortfolioCurrency) {
          final state = store.state;
          switch (state.currency) {
            case Currency.rUB:
              targetCur = Currency.uSD;
              break;
            case Currency.uSD:
              targetCur = Currency.eUR;
              break;
          }
        }
        final total = await _apiService.totalMoney(targetCur);
        return ChangeTotalAmount(total);
      },
    );
  }
}
