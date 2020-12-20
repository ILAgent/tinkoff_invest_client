import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/transformers.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';
import 'package:tinkoff_invest/redux/state/portfolio_state.dart';
import 'package:tinkoff_invest/redux/store_extension.dart';
import 'package:tinkoff_invest/services/total_money_calculator.dart';

class CalculateGroupsEpic {
  final TotalMoneyCalculator _calc;

  CalculateGroupsEpic(this._calc);

  Stream<dynamic> act(
    Stream<dynamic> actions,
    EpicStore<PortfolioState> store,
  ) {
    final Stream<BuiltList<PortfolioItem>> itemsStream = store //
        .states
        .map((event) => event.items)
        .distinct();

    final currencyStream = store //
        .states
        .map((it) => it.amount.currency)
        .distinct();

    final Stream<Iterable<PortfolioItem>> stream = Rx.combineLatest(
      [itemsStream, currencyStream],
      (values) => values[0],
    );

    return stream //
        .switchMap((items) {
      final List<MapEntry<String, List<PortfolioItem>>> groups = groupBy(
        items,
        (PortfolioItem item) => item.groupId,
      ) //
          .entries
          .where((e) => e.key != null)
          .toList();

      final actions = Stream.fromIterable(groups).asyncMap((entry) async {
        final amount = await _calc.sumPositionsAmount(store.state.amount.currency, positions: entry.value.map((e) => e.portfolioPosition));
        return UpdateGroupAmounts(amount: amount.value, id: entry.key);
      });

      return actions;
    });
  }
}
