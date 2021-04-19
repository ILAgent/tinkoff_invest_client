import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tinkoff_invest/redux/state/portfolio/items_group.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_item.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_state.dart';
import 'package:tinkoff_invest/redux/state/screen_state.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  MoneyAmount get amount;

  BuiltList<PortfolioItem> get items;

  BuiltList<ItemsGroup> get groups;

  BuiltList<ScreenState> get backStack;

  AppState._();

  factory AppState.defaultSate() {
    return AppState(
      (b) => b
        ..amount = MoneyAmount(
          (b) => b
            ..currency = Currency.RUB
            ..value = 0,
        ).toBuilder()
        ..items = BuiltList<PortfolioItem>().toBuilder()
        ..groups = BuiltList<ItemsGroup>().toBuilder()
        ..backStack =
            BuiltList<ScreenState>.from([PortfolioState()]).toBuilder(),
    );
  }

  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  static Serializer<AppState> get serializer => _$appStateSerializer;

  ItemsGroup groupById(String id) {
    return groups.firstWhere((g) => g.id == id);
  }
}
