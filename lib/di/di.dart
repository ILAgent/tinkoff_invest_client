import 'package:built_collection/built_collection.dart';
import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tinkoff_api/model/currency.dart';
import 'package:tinkoff_api/model/money_amount.dart';
import 'package:tinkoff_api/model/portfolio_position.dart';
import 'package:tinkoff_invest/redux/epics/total_money_epic.dart';
import 'package:tinkoff_invest/redux/portfolio_state.dart';
import 'package:tinkoff_invest/redux/protfolio_state_reducer.dart';
import 'package:tinkoff_invest/services/api_service.dart';

final di = GetIt.instance;

void initDI() {
  di.registerLazySingleton(() => Store<PortfolioState>(
        reducePortfolioState,
        initialState: PortfolioState(
          (b) => b
            ..currency = Currency.rUB
            ..amount = 0
            ..positions = ListBuilder<PortfolioPosition>([
              PortfolioPosition(
                (b) => b
                  ..name = "Какая-то контора"
                  ..lots = 5
                  ..averagePositionPrice = (MoneyAmountBuilder()
                    ..currency = Currency.rUB
                    ..value = 1000),
              )
            ]),
        ),
        middleware: [EpicMiddleware(di.get<TotalAmountEpic>().act)],
      ));
  di.registerLazySingleton(() => EpicStore(di.get<Store<PortfolioState>>()));
  di.registerLazySingleton(() => ApiService());
  di.registerLazySingleton(() => TotalAmountEpic(di.get()));
}
