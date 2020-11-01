import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
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
        .where((action) => action is TogglePortfolioCurrency)
        .asyncMap(
      (_) async {
        print("TogglePortfolioCurrency");
        final state = store.state;
        Currency cur;
        switch (state.currency) {
          case Currency.rUB:
            cur = Currency.uSD;
            break;
          case Currency.uSD:
            cur = Currency.eUR;
            break;
          default:
            cur = Currency.rUB;
            break;
        }
        final total = await _apiService.totalMoney(cur);
        return ChangeTotalAmount(total);
      },
    );
  }
}
