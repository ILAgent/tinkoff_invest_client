import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_api/model/money_amount.dart';
import 'package:tinkoff_invest/redux/state/items_group.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';

part 'portfolio_state.freezed.dart';

@freezed
abstract class PortfolioState with _$PortfolioState {
  factory PortfolioState({
    @required MoneyAmount amount,
    @required List<PortfolioItem> items,
    @required List<ItemsGroup> groups,
    ItemsGroup groupEditing,
  }) = _PortfolioState;
}

extension PortfolioStateExtension on PortfolioState{
  ItemsGroup groupById(String id){
    return groups.firstWhere((g) => g.id == id);
  }
}