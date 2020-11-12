// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'portfolio_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PortfolioStateTearOff {
  const _$PortfolioStateTearOff();

// ignore: unused_element
  _PortfolioState call(
      {@required MoneyAmount amount,
      @required List<PortfolioItem> items,
      @required List<ItemsGroup> groups}) {
    return _PortfolioState(
      amount: amount,
      items: items,
      groups: groups,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PortfolioState = _$PortfolioStateTearOff();

/// @nodoc
mixin _$PortfolioState {
  MoneyAmount get amount;
  List<PortfolioItem> get items;
  List<ItemsGroup> get groups;

  $PortfolioStateCopyWith<PortfolioState> get copyWith;
}

/// @nodoc
abstract class $PortfolioStateCopyWith<$Res> {
  factory $PortfolioStateCopyWith(
          PortfolioState value, $Res Function(PortfolioState) then) =
      _$PortfolioStateCopyWithImpl<$Res>;
  $Res call(
      {MoneyAmount amount, List<PortfolioItem> items, List<ItemsGroup> groups});
}

/// @nodoc
class _$PortfolioStateCopyWithImpl<$Res>
    implements $PortfolioStateCopyWith<$Res> {
  _$PortfolioStateCopyWithImpl(this._value, this._then);

  final PortfolioState _value;
  // ignore: unused_field
  final $Res Function(PortfolioState) _then;

  @override
  $Res call({
    Object amount = freezed,
    Object items = freezed,
    Object groups = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
      items: items == freezed ? _value.items : items as List<PortfolioItem>,
      groups: groups == freezed ? _value.groups : groups as List<ItemsGroup>,
    ));
  }
}

/// @nodoc
abstract class _$PortfolioStateCopyWith<$Res>
    implements $PortfolioStateCopyWith<$Res> {
  factory _$PortfolioStateCopyWith(
          _PortfolioState value, $Res Function(_PortfolioState) then) =
      __$PortfolioStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MoneyAmount amount, List<PortfolioItem> items, List<ItemsGroup> groups});
}

/// @nodoc
class __$PortfolioStateCopyWithImpl<$Res>
    extends _$PortfolioStateCopyWithImpl<$Res>
    implements _$PortfolioStateCopyWith<$Res> {
  __$PortfolioStateCopyWithImpl(
      _PortfolioState _value, $Res Function(_PortfolioState) _then)
      : super(_value, (v) => _then(v as _PortfolioState));

  @override
  _PortfolioState get _value => super._value as _PortfolioState;

  @override
  $Res call({
    Object amount = freezed,
    Object items = freezed,
    Object groups = freezed,
  }) {
    return _then(_PortfolioState(
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
      items: items == freezed ? _value.items : items as List<PortfolioItem>,
      groups: groups == freezed ? _value.groups : groups as List<ItemsGroup>,
    ));
  }
}

/// @nodoc
class _$_PortfolioState
    with DiagnosticableTreeMixin
    implements _PortfolioState {
  _$_PortfolioState(
      {@required this.amount, @required this.items, @required this.groups})
      : assert(amount != null),
        assert(items != null),
        assert(groups != null);

  @override
  final MoneyAmount amount;
  @override
  final List<PortfolioItem> items;
  @override
  final List<ItemsGroup> groups;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PortfolioState(amount: $amount, items: $items, groups: $groups)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PortfolioState'))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('groups', groups));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PortfolioState &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(groups);

  @override
  _$PortfolioStateCopyWith<_PortfolioState> get copyWith =>
      __$PortfolioStateCopyWithImpl<_PortfolioState>(this, _$identity);
}

abstract class _PortfolioState implements PortfolioState {
  factory _PortfolioState(
      {@required MoneyAmount amount,
      @required List<PortfolioItem> items,
      @required List<ItemsGroup> groups}) = _$_PortfolioState;

  @override
  MoneyAmount get amount;
  @override
  List<PortfolioItem> get items;
  @override
  List<ItemsGroup> get groups;
  @override
  _$PortfolioStateCopyWith<_PortfolioState> get copyWith;
}
