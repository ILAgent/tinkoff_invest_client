import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/app_state.dart';
import 'package:tinkoff_invest/services/actual_price_provider.dart';
import 'package:tinkoff_invest/services/currencies_converter.dart';
import 'package:tinkoff_invest/services/operations_provider.dart';
import 'package:tinkoff_invest/services/portfolio_provider.dart';

class InvalidateEpic {
  final ActualPriceProvider _actualPriceProvider;
  final CurrenciesConverter _currenciesConverter;
  final OperationsProvider _operationsProvider;
  final PortfolioProvider _portfolioProvider;

  InvalidateEpic(this._actualPriceProvider, this._currenciesConverter,
      this._operationsProvider, this._portfolioProvider);

  Stream<dynamic> act(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.where((event) => event is Invalidate).doOnData(
      (event) {
        _actualPriceProvider.invalidate();
        _currenciesConverter.invalidate();
        _operationsProvider.invalidate();
        _portfolioProvider.invalidate();
      },
    ).map((event) => InitAction());
  }
}
