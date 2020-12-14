import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_invest/redux/state/items_group.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';
import 'package:tinkoff_invest_api/model/currency.dart';
import 'package:tinkoff_invest_api/model/money_amount.dart';

part 'portfolio_state.freezed.dart';

@freezed
abstract class PortfolioState with _$PortfolioState {
  factory PortfolioState({
    @required MoneyAmount amount,
    @required List<PortfolioItem> items,
    @required List<ItemsGroup> groups,
    ItemsGroup groupEditing,
  }) = _PortfolioState;

  factory PortfolioState.defaultSate() {
    return PortfolioState(
      amount: MoneyAmount(
        (b) => b
          ..currency = Currency.rUB
          ..value = 0,
      ),
      items: [],
      groups: [],
    );
  }
}

extension PortfolioStateExtension on PortfolioState {
  ItemsGroup groupById(String id) {
    return groups.firstWhere((g) => g.id == id);
  }
}
