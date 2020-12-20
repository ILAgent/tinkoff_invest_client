import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:tinkoff_invest/redux/state/items_group.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';
import 'package:tinkoff_invest_api/model/currency.dart';
import 'package:tinkoff_invest_api/model/money_amount.dart';

part 'portfolio_state.g.dart';

abstract class PortfolioState implements Built<PortfolioState, PortfolioStateBuilder> {
  MoneyAmount get amount;

  BuiltList<PortfolioItem> get items;

  BuiltList<ItemsGroup> get groups;

  @nullable
  ItemsGroup get groupEditing;

  PortfolioState._();

  factory PortfolioState([void Function(PortfolioStateBuilder) updates]) = _$PortfolioState;

  factory PortfolioState.defaultSate() {
    return PortfolioState(
      (b) => b
        ..amount = MoneyAmount(
          (b) => b
            ..currency = Currency.rUB
            ..value = 0,
        ).toBuilder()
        ..items = BuiltList<PortfolioItem>().toBuilder()
        ..groups = BuiltList<ItemsGroup>().toBuilder(),
    );
  }
}

extension PortfolioStateExtension on PortfolioState {
  ItemsGroup groupById(String id) {
    return groups.firstWhere((g) => g.id == id);
  }
}
