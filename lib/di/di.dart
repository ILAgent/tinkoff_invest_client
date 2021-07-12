import 'package:get_it/get_it.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tinkoff_invest/redux/app_store.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';
import 'package:tinkoff_invest/redux/epics/calculate_groups_epic.dart';
import 'package:tinkoff_invest/redux/epics/portfolio_item_epic.dart';
import 'package:tinkoff_invest/redux/epics/save_state_epic.dart';
import 'package:tinkoff_invest/redux/epics/total_money_epic.dart';
import 'package:tinkoff_invest/redux/state/screen_state_to_widget.dart';
import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest/services/currencies_converter.dart';
import 'package:tinkoff_invest/services/portfolio_provider.dart';
import 'package:tinkoff_invest/services/storage/storage.dart';
import 'package:tinkoff_invest/services/total_money_calculator.dart';

import '../main.dart';

final di = GetIt.instance;

T p<T>() {
  return di.get();
}

Future<void> initDI() async {
  di.registerSingleton(await Storage.create());
  di.registerLazySingleton(() => AppStore(p(), p(), p(), p(), p()));
  di.registerFactory<Dispatcher>(() => p<AppStore>());
  di.registerLazySingleton(() => EpicStore(p<AppStore>()));
  di.registerLazySingleton(() => ApiService());
  di.registerLazySingleton(() => TotalAmountEpic(p()));
  di.registerLazySingleton(() => PortfolioItemsEpic(p(), p()));
  di.registerLazySingleton(() => CalculateGroupsEpic(p()));
  di.registerLazySingleton(() => SaveSateEpic(p()));
  di.registerLazySingleton(() => CurrenciesConverter(p()));
  di.registerLazySingleton(() => TotalMoneyCalculator(p(), p(), p()));
  di.registerLazySingleton(() => ScreenStateToWidget(p()));
  di.registerLazySingleton(() => PortfolioProvider(p()));

  di.registerLazySingleton(() => AppWidget(p(), p()));
}
