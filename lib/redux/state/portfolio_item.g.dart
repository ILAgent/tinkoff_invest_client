// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PortfolioItem> _$portfolioItemSerializer =
    new _$PortfolioItemSerializer();

class _$PortfolioItemSerializer implements StructuredSerializer<PortfolioItem> {
  @override
  final Iterable<Type> types = const [PortfolioItem, _$PortfolioItem];
  @override
  final String wireName = 'PortfolioItem';

  @override
  Iterable<Object> serialize(Serializers serializers, PortfolioItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'portfolioPosition',
      serializers.serialize(object.portfolioPosition,
          specifiedType: const FullType(PortfolioPosition)),
    ];
    if (object.actualPrice != null) {
      result
        ..add('actualPrice')
        ..add(serializers.serialize(object.actualPrice,
            specifiedType: const FullType(double)));
    }
    if (object.income != null) {
      result
        ..add('income')
        ..add(serializers.serialize(object.income,
            specifiedType: const FullType(double)));
    }
    if (object.groupId != null) {
      result
        ..add('groupId')
        ..add(serializers.serialize(object.groupId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PortfolioItem deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PortfolioItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'portfolioPosition':
          result.portfolioPosition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PortfolioPosition))
              as PortfolioPosition);
          break;
        case 'actualPrice':
          result.actualPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'income':
          result.income = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'groupId':
          result.groupId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PortfolioItem extends PortfolioItem {
  @override
  final PortfolioPosition portfolioPosition;
  @override
  final double actualPrice;
  @override
  final double income;
  @override
  final String groupId;

  factory _$PortfolioItem([void Function(PortfolioItemBuilder) updates]) =>
      (new PortfolioItemBuilder()..update(updates)).build();

  _$PortfolioItem._(
      {this.portfolioPosition, this.actualPrice, this.income, this.groupId})
      : super._() {
    if (portfolioPosition == null) {
      throw new BuiltValueNullFieldError('PortfolioItem', 'portfolioPosition');
    }
  }

  @override
  PortfolioItem rebuild(void Function(PortfolioItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PortfolioItemBuilder toBuilder() => new PortfolioItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PortfolioItem &&
        portfolioPosition == other.portfolioPosition &&
        actualPrice == other.actualPrice &&
        income == other.income &&
        groupId == other.groupId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, portfolioPosition.hashCode), actualPrice.hashCode),
            income.hashCode),
        groupId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PortfolioItem')
          ..add('portfolioPosition', portfolioPosition)
          ..add('actualPrice', actualPrice)
          ..add('income', income)
          ..add('groupId', groupId))
        .toString();
  }
}

class PortfolioItemBuilder
    implements Builder<PortfolioItem, PortfolioItemBuilder> {
  _$PortfolioItem _$v;

  PortfolioPositionBuilder _portfolioPosition;
  PortfolioPositionBuilder get portfolioPosition =>
      _$this._portfolioPosition ??= new PortfolioPositionBuilder();
  set portfolioPosition(PortfolioPositionBuilder portfolioPosition) =>
      _$this._portfolioPosition = portfolioPosition;

  double _actualPrice;
  double get actualPrice => _$this._actualPrice;
  set actualPrice(double actualPrice) => _$this._actualPrice = actualPrice;

  double _income;
  double get income => _$this._income;
  set income(double income) => _$this._income = income;

  String _groupId;
  String get groupId => _$this._groupId;
  set groupId(String groupId) => _$this._groupId = groupId;

  PortfolioItemBuilder();

  PortfolioItemBuilder get _$this {
    if (_$v != null) {
      _portfolioPosition = _$v.portfolioPosition?.toBuilder();
      _actualPrice = _$v.actualPrice;
      _income = _$v.income;
      _groupId = _$v.groupId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PortfolioItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PortfolioItem;
  }

  @override
  void update(void Function(PortfolioItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PortfolioItem build() {
    _$PortfolioItem _$result;
    try {
      _$result = _$v ??
          new _$PortfolioItem._(
              portfolioPosition: portfolioPosition.build(),
              actualPrice: actualPrice,
              income: income,
              groupId: groupId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'portfolioPosition';
        portfolioPosition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PortfolioItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
