import 'package:get_it/get_it.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';
import 'package:tinkoff_invest/redux/epics/portfolio_item_epic.dart';
import 'package:tinkoff_invest/redux/epics/total_money_epic.dart';
import 'package:tinkoff_invest/redux/portfolio_store.dart';
import 'package:tinkoff_invest/services/api_service.dart';

final di = GetIt.instance;

void initDI() {
  di.registerLazySingleton(() => PortfolioStore(di.get(), di.get()));
  di.registerFactory<Dispatcher>(() => di.get<PortfolioStore>());
  di.registerLazySingleton(() => EpicStore(di.get<PortfolioStore>()));
  di.registerLazySingleton(() => ApiService());
  di.registerLazySingleton(() => TotalAmountEpic(di.get()));
  di.registerLazySingleton(() => PortfolioItemsEpic(di.get()));
}
