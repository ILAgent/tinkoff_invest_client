import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';
import 'package:tinkoff_api/model/currency.dart';
import 'package:tinkoff_invest/redux/portfolio_state.dart';
import 'package:tinkoff_invest/redux/protfolio_state_reducer.dart';

final di = GetIt.instance;

void initDI() {
  di.registerLazySingleton(() => Store<PortfolioState>(
        reducePortfolioState,
        initialState: PortfolioState((b) => b
          ..currency = Currency.uSD
          ..amount = 123456.78),
      ));
}
