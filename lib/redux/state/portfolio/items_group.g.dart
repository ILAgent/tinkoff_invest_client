// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemsGroup> _$itemsGroupSerializer = new _$ItemsGroupSerializer();

class _$ItemsGroupSerializer implements StructuredSerializer<ItemsGroup> {
  @override
  final Iterable<Type> types = const [ItemsGroup, _$ItemsGroup];
  @override
  final String wireName = 'ItemsGroup';

  @override
  Iterable<Object?> serialize(Serializers serializers, ItemsGroup object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.actualPrice;
    if (value != null) {
      result
        ..add('actualPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.income;
    if (value != null) {
      result
        ..add('income')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  ItemsGroup deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemsGroupBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'actualPrice':
          result.actualPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'income':
          result.income = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$ItemsGroup extends ItemsGroup {
  @override
  final String id;
  @override
  final String title;
  @override
  final double? actualPrice;
  @override
  final double? income;

  factory _$ItemsGroup([void Function(ItemsGroupBuilder)? updates]) =>
      (new ItemsGroupBuilder()..update(updates)).build();

  _$ItemsGroup._(
      {required this.id, required this.title, this.actualPrice, this.income})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'ItemsGroup', 'id');
    BuiltValueNullFieldError.checkNotNull(title, 'ItemsGroup', 'title');
  }

  @override
  ItemsGroup rebuild(void Function(ItemsGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsGroupBuilder toBuilder() => new ItemsGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsGroup &&
        id == other.id &&
        title == other.title &&
        actualPrice == other.actualPrice &&
        income == other.income;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), title.hashCode), actualPrice.hashCode),
        income.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ItemsGroup')
          ..add('id', id)
          ..add('title', title)
          ..add('actualPrice', actualPrice)
          ..add('income', income))
        .toString();
  }
}

class ItemsGroupBuilder implements Builder<ItemsGroup, ItemsGroupBuilder> {
  _$ItemsGroup? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  double? _actualPrice;
  double? get actualPrice => _$this._actualPrice;
  set actualPrice(double? actualPrice) => _$this._actualPrice = actualPrice;

  double? _income;
  double? get income => _$this._income;
  set income(double? income) => _$this._income = income;

  ItemsGroupBuilder();

  ItemsGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _actualPrice = $v.actualPrice;
      _income = $v.income;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemsGroup;
  }

  @override
  void update(void Function(ItemsGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ItemsGroup build() {
    final _$result = _$v ??
        new _$ItemsGroup._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'ItemsGroup', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'ItemsGroup', 'title'),
            actualPrice: actualPrice,
            income: income);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
