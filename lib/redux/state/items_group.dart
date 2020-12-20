import 'package:built_value/built_value.dart';

part 'items_group.g.dart';

abstract class ItemsGroup implements Built<ItemsGroup, ItemsGroupBuilder> {
  String get id;

  String get title;

  @nullable
  double get actualPrice;

  @nullable
  double get income;

  ItemsGroup._();

  factory ItemsGroup([void Function(ItemsGroupBuilder) updates]) = _$ItemsGroup;
}
