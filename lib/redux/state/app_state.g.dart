// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
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
      'backStack',
      serializers.serialize(object.backStack,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ScreenState)])),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'amount':
          result.amount.replace(serializers.deserialize(value,
              specifiedType: const FullType(MoneyAmount))! as MoneyAmount);
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PortfolioItem)]))!
              as BuiltList<Object>);
          break;
        case 'groups':
          result.groups.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ItemsGroup)]))!
              as BuiltList<Object>);
          break;
        case 'backStack':
          result.backStack.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ScreenState)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final MoneyAmount amount;
  @override
  final BuiltList<PortfolioItem> items;
  @override
  final BuiltList<ItemsGroup> groups;
  @override
  final BuiltList<ScreenState> backStack;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {required this.amount,
      required this.items,
      required this.groups,
      required this.backStack})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(amount, 'AppState', 'amount');
    BuiltValueNullFieldError.checkNotNull(items, 'AppState', 'items');
    BuiltValueNullFieldError.checkNotNull(groups, 'AppState', 'groups');
    BuiltValueNullFieldError.checkNotNull(backStack, 'AppState', 'backStack');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        amount == other.amount &&
        items == other.items &&
        groups == other.groups &&
        backStack == other.backStack;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, amount.hashCode), items.hashCode), groups.hashCode),
        backStack.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('amount', amount)
          ..add('items', items)
          ..add('groups', groups)
          ..add('backStack', backStack))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  MoneyAmountBuilder? _amount;
  MoneyAmountBuilder get amount => _$this._amount ??= new MoneyAmountBuilder();
  set amount(MoneyAmountBuilder? amount) => _$this._amount = amount;

  ListBuilder<PortfolioItem>? _items;
  ListBuilder<PortfolioItem> get items =>
      _$this._items ??= new ListBuilder<PortfolioItem>();
  set items(ListBuilder<PortfolioItem>? items) => _$this._items = items;

  ListBuilder<ItemsGroup>? _groups;
  ListBuilder<ItemsGroup> get groups =>
      _$this._groups ??= new ListBuilder<ItemsGroup>();
  set groups(ListBuilder<ItemsGroup>? groups) => _$this._groups = groups;

  ListBuilder<ScreenState>? _backStack;
  ListBuilder<ScreenState> get backStack =>
      _$this._backStack ??= new ListBuilder<ScreenState>();
  set backStack(ListBuilder<ScreenState>? backStack) =>
      _$this._backStack = backStack;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount.toBuilder();
      _items = $v.items.toBuilder();
      _groups = $v.groups.toBuilder();
      _backStack = $v.backStack.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              amount: amount.build(),
              items: items.build(),
              groups: groups.build(),
              backStack: backStack.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'amount';
        amount.build();
        _$failedField = 'items';
        items.build();
        _$failedField = 'groups';
        groups.build();
        _$failedField = 'backStack';
        backStack.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
