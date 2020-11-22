import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';
import 'package:tinkoff_invest/redux/state/portfolio_state.dart';
import 'package:tinkoff_invest/redux/store_extension.dart';

class CalculateGroupsEpic {
  Stream<dynamic> act(
    Stream<dynamic> actions,
    EpicStore<PortfolioState> store,
  ) {
    return store.states
        .map((event) => event.items)
        .distinct((a, b) => listEquals(a, b))
        .switchMap((items) {
      final groups = groupBy(items, (PortfolioItem item) => item.groupId)
          .entries
          .where((e) => e.key != null)
          .toList();
      final actions = groups.map((group) {
        final amount = group.value
            .fold(0.0, (prev, e) => prev + e.actualPrice * e.portfolioPosition.balance ?? 0.0);
        final income = group.value
            .fold(0.0, (prev, element) => prev + element.income ?? 0.0);
        return UpdateGroupAmounts(
            amount: amount, income: income, id: group.key);
      });

      return Stream.fromIterable(actions);
    });
  }
}
