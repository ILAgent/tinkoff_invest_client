import 'package:built_value/built_value.dart';
import 'package:tinkoff_api/model/currency.dart';

part 'portfolio_state.g.dart';

abstract class PortfolioState
    implements Built<PortfolioState, PortfolioStateBuilder> {
  Currency get currency;

  double get amount;

  PortfolioState._();

  factory PortfolioState([updates(PortfolioStateBuilder b)]) = _$PortfolioState;
}
