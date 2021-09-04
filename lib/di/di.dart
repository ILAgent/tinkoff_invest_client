import 'package:get_it/get_it.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tinkoff_invest/redux/app_store.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';
import 'package:tinkoff_invest/redux/epics/calculate_groups_epic.dart';
import 'package:tinkoff_invest/redux/epics/invalidate_epic.dart';
import 'package:tinkoff_invest/redux/epics/portfolio_item_epic.dart';
import 'package:tinkoff_invest/redux/epics/save_state_epic.dart';
import 'package:tinkoff_invest/redux/epics/total_money_epic.dart';
import 'package:tinkoff_invest/redux/state/screen_state_to_widget.dart';
import 'package:tinkoff_invest/services/actual_price_provider.dart';
import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest/services/currencies_converter.dart';
import 'package:tinkoff_invest/services/income_calculator.dart';
import 'package:tinkoff_invest/services/operations_provider.dart';
import 'package:tinkoff_invest/services/portfolio_provider.dart';
import 'package:tinkoff_invest/services/storage/storage.dart';
import 'package:tinkoff_invest/services/total_money_calculator.dart';

import '../main.dart';

final di = GetIt.instance;

T p<T extends Object>() {
  return di.get<T>();
}

Future<void> initDI() async {
  di.registerSingleton(await Storage.create());
  di.registerLazySingleton(() => AppStore(p(), p(), p(), p(), p(), p()));
  di.registerFactory<Dispatcher>(() => p<AppStore>());
  di.registerLazySingleton(() => EpicStore(p<AppStore>()));
  di.registerLazySingleton(() => ApiService());
  di.registerLazySingleton(() => TotalAmountEpic(p()));
  di.registerLazySingleton(() => PortfolioItemsEpic(p(), p(), p()));
  di.registerLazySingleton(() => CalculateGroupsEpic(p()));
  di.registerLazySingleton(() => SaveSateEpic(p()));
  di.registerLazySingleton(() => InvalidateEpic(p(), p(), p(), p()));
  di.registerLazySingleton(() => CurrenciesConverter(p(), p()));
  di.registerLazySingleton(() => TotalMoneyCalculator(p(), p(), p()));
  di.registerLazySingleton(() => ScreenStateToWidget(p()));
  di.registerLazySingleton(() => PortfolioProvider(p()));
  di.registerLazySingleton(() => IncomeCalculator(p(), p(), p()));
  di.registerLazySingleton(() => ActualPriceProvider(p()));
  di.registerLazySingleton(() => OperationsProvider(p()));

  di.registerLazySingleton(() => AppWidget(p(), p()));
}
