import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tinkoff_invest/redux/state/screen_state.dart';

part 'portfolio_state.g.dart';

abstract class PortfolioState
    implements Built<PortfolioState, PortfolioStateBuilder>, ScreenState {

  PortfolioState._();

  factory PortfolioState([void Function(PortfolioStateBuilder) updates]) =
      _$PortfolioState;

  static Serializer<PortfolioState> get serializer =>
      _$portfolioStateSerializer;

  @override
  ScreenState reduce(dynamic action) => this;

  @override
  T acceptVisitor<T>(ScreenStateVisitor<T> visitor) {
    return visitor.visitPortfolio(this);
  }
}
