// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PortfolioState> _$portfolioStateSerializer =
    new _$PortfolioStateSerializer();

class _$PortfolioStateSerializer
    implements StructuredSerializer<PortfolioState> {
  @override
  final Iterable<Type> types = const [PortfolioState, _$PortfolioState];
  @override
  final String wireName = 'PortfolioState';

  @override
  Iterable<Object> serialize(Serializers serializers, PortfolioState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'amount',
      serializers.serialize(object.amount,
          specifiedType: const FullType(MoneyAmount)),
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(PortfolioItem)])),
      'groups',
      serializers.serialize(object.groups,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ItemsGroup)])),
    ];
    if (object.groupEditing != null) {
      result
        ..add('groupEditing')
        ..add(serializers.serialize(object.groupEditing,
            specifiedType: const FullType(ItemsGroup)));
    }
    return result;
  }

  @override
  PortfolioState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PortfolioStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'amount':
          result.amount.replace(serializers.deserialize(value,
              specifiedType: const FullType(MoneyAmount)) as MoneyAmount);
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PortfolioItem)]))
              as BuiltList<Object>);
          break;
        case 'groups':
          result.groups.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ItemsGroup)]))
              as BuiltList<Object>);
          break;
        case 'groupEditing':
          result.groupEditing.replace(serializers.deserialize(value,
              specifiedType: const FullType(ItemsGroup)) as ItemsGroup);
          break;
      }
    }

    return result.build();
  }
}

class _$PortfolioState extends PortfolioState {
  @override
  final MoneyAmount amount;
  @override
  final BuiltList<PortfolioItem> items;
  @override
  final BuiltList<ItemsGroup> groups;
  @override
  final ItemsGroup groupEditing;

  factory _$PortfolioState([void Function(PortfolioStateBuilder) updates]) =>
      (new PortfolioStateBuilder()..update(updates)).build();

  _$PortfolioState._({this.amount, this.items, this.groups, this.groupEditing})
      : super._() {
    if (amount == null) {
      throw new BuiltValueNullFieldError('PortfolioState', 'amount');
    }
    if (items == null) {
      throw new BuiltValueNullFieldError('PortfolioState', 'items');
    }
    if (groups == null) {
      throw new BuiltValueNullFieldError('PortfolioState', 'groups');
    }
  }

  @override
  PortfolioState rebuild(void Function(PortfolioStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PortfolioStateBuilder toBuilder() =>
      new PortfolioStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PortfolioState &&
        amount == other.amount &&
        items == other.items &&
        groups == other.groups &&
        groupEditing == other.groupEditing;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, amount.hashCode), items.hashCode), groups.hashCode),
        groupEditing.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PortfolioState')
          ..add('amount', amount)
          ..add('items', items)
          ..add('groups', groups)
          ..add('groupEditing', groupEditing))
        .toString();
  }
}

class PortfolioStateBuilder
    implements Builder<PortfolioState, PortfolioStateBuilder> {
  _$PortfolioState _$v;

  MoneyAmountBuilder _amount;
  MoneyAmountBuilder get amount => _$this._amount ??= new MoneyAmountBuilder();
  set amount(MoneyAmountBuilder amount) => _$this._amount = amount;

  ListBuilder<PortfolioItem> _items;
  ListBuilder<PortfolioItem> get items =>
      _$this._items ??= new ListBuilder<PortfolioItem>();
  set items(ListBuilder<PortfolioItem> items) => _$this._items = items;

  ListBuilder<ItemsGroup> _groups;
  ListBuilder<ItemsGroup> get groups =>
      _$this._groups ??= new ListBuilder<ItemsGroup>();
  set groups(ListBuilder<ItemsGroup> groups) => _$this._groups = groups;

  ItemsGroupBuilder _groupEditing;
  ItemsGroupBuilder get groupEditing =>
      _$this._groupEditing ??= new ItemsGroupBuilder();
  set groupEditing(ItemsGroupBuilder groupEditing) =>
      _$this._groupEditing = groupEditing;

  PortfolioStateBuilder();

  PortfolioStateBuilder get _$this {
    if (_$v != null) {
      _amount = _$v.amount?.toBuilder();
      _items = _$v.items?.toBuilder();
      _groups = _$v.groups?.toBuilder();
      _groupEditing = _$v.groupEditing?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PortfolioState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PortfolioState;
  }

  @override
  void update(void Function(PortfolioStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PortfolioState build() {
    _$PortfolioState _$result;
    try {
      _$result = _$v ??
          new _$PortfolioState._(
              amount: amount.build(),
              items: items.build(),
              groups: groups.build(),
              groupEditing: _groupEditing?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'amount';
        amount.build();
        _$failedField = 'items';
        items.build();
        _$failedField = 'groups';
        groups.build();
        _$failedField = 'groupEditing';
        _groupEditing?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PortfolioState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
