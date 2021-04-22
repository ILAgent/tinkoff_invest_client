import 'package:get_it/get_it.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';
import 'package:tinkoff_invest/redux/epics/calculate_groups_epic.dart';
import 'package:tinkoff_invest/redux/epics/portfolio_item_epic.dart';
import 'package:tinkoff_invest/redux/epics/save_state_epic.dart';
import 'package:tinkoff_invest/redux/epics/total_money_epic.dart';
import 'package:tinkoff_invest/redux/app_store.dart';
import 'package:tinkoff_invest/redux/state/screen_state_to_widget.dart';
import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest/services/currencies_converter.dart';
import 'package:tinkoff_invest/services/storage/storage.dart';
import 'package:tinkoff_invest/services/total_money_calculator.dart';

import '../main.dart';

final di = GetIt.instance;

Future<void> initDI() async {
  di.registerSingleton(await Storage.create());
  di.registerLazySingleton(() => AppStore(di.get(), di.get(), di.get(), di.get(), di.get()));
  di.registerFactory<Dispatcher>(() => di.get<AppStore>());
  di.registerLazySingleton(() => EpicStore(di.get<AppStore>()));
  di.registerLazySingleton(() => ApiService());
  di.registerLazySingleton(() => TotalAmountEpic(di.get()));
  di.registerLazySingleton(() => PortfolioItemsEpic(di.get()));
  di.registerLazySingleton(() => CalculateGroupsEpic(di.get()));
  di.registerLazySingleton(() => SaveSateEpic(di.get()));
  di.registerLazySingleton(() => CurrenciesConverter(di.get()));
  di.registerLazySingleton(() => TotalMoneyCalculator(di.get(), di.get()));
  di.registerLazySingleton(() => ScreenStateToWidget(di.get()));

  di.registerLazySingleton(() => AppWidget(di.get(),di.get()));
}
