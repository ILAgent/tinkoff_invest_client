import 'package:built_collection/built_collection.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/transformers.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/app_state.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_item.dart';
import 'package:tinkoff_invest/redux/store_extension.dart';
import 'package:tinkoff_invest/services/currencies_converter.dart';
import 'package:tinkoff_invest/utils/iterable_etensions.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

class CalculateGroupsEpic {
  final CurrenciesConverter _converter;

  CalculateGroupsEpic(this._converter);

  Stream<dynamic> act(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) {
    final Stream<BuiltList<PortfolioItem>> itemsStream = store //
        .states
        .map((event) => event.items)
        .distinct();

    final currencyStream = store //
        .states
        .map((it) => it.amount.currency)
        .distinct();

    final Stream<BuiltList<PortfolioItem>> stream = Rx.combineLatest(
      [itemsStream, currencyStream],
      (values) => values[0] as BuiltList<PortfolioItem>,
    );

    return stream.switchMap<dynamic>((BuiltList<PortfolioItem> items) {

      final List<MapEntry<String, List<PortfolioItem>>> groups = store //
          .state
          .groups
          .map((group) {
        final itemsInGroup = items.where((item) => item.groupId == group.id).toList();
        return MapEntry(group.id, itemsInGroup);
      }).toList();

      final actions = Stream.fromIterable(groups).asyncMap((entry) async {
        final targetCurrency = store.state.amount.currency;
        final convertedAmount = entry.value.isEmpty
            ? null
            : await entry.value.sumAsync((portfolioItem) async {
                final amount = (portfolioItem.actualPrice ?? 0.0) * portfolioItem.portfolioPosition.balance;
                final moneyAmount = MoneyAmount((b) => b
                  ..currency = portfolioItem.currency()
                  ..value = amount);
                return (await _converter.convert(moneyAmount, targetCurrency)).value;
              });

        final convertedIncome = entry.value.isEmpty
            ? null
            : await entry.value.sumAsync((portfolioItem) async {
                final income = portfolioItem.income ?? 0.0;
                final moneyAmountIncome = MoneyAmount((b) => b
                  ..currency = portfolioItem.currency()
                  ..value = income);
                return (await _converter.convert(moneyAmountIncome, targetCurrency)).value;
              });

        return UpdateGroupAmounts(amount: convertedAmount, income: convertedIncome, id: entry.key);
      });

      return actions;
    });
  }
}
