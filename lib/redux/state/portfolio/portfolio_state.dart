import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/portfolio/items_group.dart';
import 'package:tinkoff_invest/redux/state/screen_state.dart';

part 'portfolio_state.g.dart';

abstract class PortfolioState
    implements Built<PortfolioState, PortfolioStateBuilder>, ScreenState {
  ItemsGroup? get groupEditing;

  PortfolioState._();

  factory PortfolioState([void Function(PortfolioStateBuilder) updates]) =
      _$PortfolioState;

  static Serializer<PortfolioState> get serializer =>
      _$portfolioStateSerializer;

  @override
  ScreenState reduce(dynamic action) {
    return rebuild(
      (b) => b
        ..groupEditing = _reduceGroupEditing(groupEditing, action)?.toBuilder(),
    );
  }

  @override
  T acceptVisitor<T>(ScreenStateVisitor<T> visitor) {
    return visitor.visitPortfolio(this);
  }
}

ItemsGroup? _reduceGroupEditing(ItemsGroup? groupEditing, dynamic action) {
  if (action is EditGroup) {
    return action.group;
  }
  if (action is AddGroup) {
    return action.group;
  }
  if (action is UpdateGroupTitle) {
    return null;
  }
  return groupEditing;
}
