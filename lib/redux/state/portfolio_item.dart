import 'package:built_value/built_value.dart';
import 'package:tinkoff_api/model/portfolio_position.dart';

part 'portfolio_item.g.dart';

abstract class PortfolioItem implements Built<PortfolioItem, PortfolioItemBuilder>{

  PortfolioPosition get portfolioPosition;

  double get actualPrice;

  PortfolioItem._();

  factory PortfolioItem([updates(PortfolioItemBuilder b)]) = _$PortfolioItem;
}