import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tinkoff_invest/redux/state/portfolio_list_element.dart';
import 'package:tinkoff_invest_api/model/portfolio_position.dart';

part 'portfolio_item.g.dart';

abstract class PortfolioItem implements Built<PortfolioItem, PortfolioItemBuilder>, PortfolioListElement{

  PortfolioPosition get portfolioPosition;

  @nullable
  double get actualPrice;

  @nullable
  double get income;

  @nullable
  String get groupId;

  PortfolioItem._();

  factory PortfolioItem([Function(PortfolioItemBuilder b) updates]) = _$PortfolioItem;

  static Serializer<PortfolioItem> get serializer => _$portfolioItemSerializer;
}
