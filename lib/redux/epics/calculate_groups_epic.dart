import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
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
    //todo exclude extra calcs
    return store.states.map((event) => event.items).distinct((a, b) => listEquals(a, b)).switchMap((items) {
      final List<MapEntry<String, List<PortfolioItem>>> groups =
          groupBy(items, (PortfolioItem item) => item.groupId).entries.where((e) => e.key != null).toList();

      final actions = Stream.fromIterable(groups).asyncMap((entry) async {
        final amount = await _calc.totalMoney(store.state.amount.currency, positions: entry.value.map((e) => e.portfolioPosition));
        return UpdateGroupAmounts(amount: amount.value, id: entry.key);
      });

      return actions;
    });
  }
}
