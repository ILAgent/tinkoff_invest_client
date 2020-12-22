import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tinkoff_invest/redux/state/portfolio_list_element.dart';

part 'items_group.g.dart';

abstract class ItemsGroup implements Built<ItemsGroup, ItemsGroupBuilder>, PortfolioListElement {
  String get id;

  String get title;

  @nullable
  double get actualPrice;

  @nullable
  double get income;

  ItemsGroup._();

  factory ItemsGroup([void Function(ItemsGroupBuilder) updates]) = _$ItemsGroup;

  static Serializer<ItemsGroup> get serializer => _$itemsGroupSerializer;

}
