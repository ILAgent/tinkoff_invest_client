import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:tinkoff_api/model/currency.dart';
import 'package:tinkoff_api/model/portfolio_position.dart';

part 'portfolio_state.g.dart';

abstract class PortfolioState
    implements Built<PortfolioState, PortfolioStateBuilder> {
  Currency get currency;

  double get amount;

  BuiltList<PortfolioPosition> get positions;

  PortfolioState._();

  factory PortfolioState([updates(PortfolioStateBuilder b)]) = _$PortfolioState;
}
