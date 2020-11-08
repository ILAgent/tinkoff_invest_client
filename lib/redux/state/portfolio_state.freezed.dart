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
      {Currency currency, double amount, List<PortfolioItem> items}) {
    return _PortfolioState(
      currency: currency,
      amount: amount,
      items: items,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PortfolioState = _$PortfolioStateTearOff();

/// @nodoc
mixin _$PortfolioState {
  Currency get currency;
  double get amount;
  List<PortfolioItem> get items;

  $PortfolioStateCopyWith<PortfolioState> get copyWith;
}

/// @nodoc
abstract class $PortfolioStateCopyWith<$Res> {
  factory $PortfolioStateCopyWith(
          PortfolioState value, $Res Function(PortfolioState) then) =
      _$PortfolioStateCopyWithImpl<$Res>;
  $Res call({Currency currency, double amount, List<PortfolioItem> items});
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
    Object currency = freezed,
    Object amount = freezed,
    Object items = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed ? _value.currency : currency as Currency,
      amount: amount == freezed ? _value.amount : amount as double,
      items: items == freezed ? _value.items : items as List<PortfolioItem>,
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
  $Res call({Currency currency, double amount, List<PortfolioItem> items});
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
    Object currency = freezed,
    Object amount = freezed,
    Object items = freezed,
  }) {
    return _then(_PortfolioState(
      currency: currency == freezed ? _value.currency : currency as Currency,
      amount: amount == freezed ? _value.amount : amount as double,
      items: items == freezed ? _value.items : items as List<PortfolioItem>,
    ));
  }
}

/// @nodoc
class _$_PortfolioState
    with DiagnosticableTreeMixin
    implements _PortfolioState {
  _$_PortfolioState({this.currency, this.amount, this.items});

  @override
  final Currency currency;
  @override
  final double amount;
  @override
  final List<PortfolioItem> items;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PortfolioState(currency: $currency, amount: $amount, items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PortfolioState'))
      ..add(DiagnosticsProperty('currency', currency))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PortfolioState &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(items);

  @override
  _$PortfolioStateCopyWith<_PortfolioState> get copyWith =>
      __$PortfolioStateCopyWithImpl<_PortfolioState>(this, _$identity);
}

abstract class _PortfolioState implements PortfolioState {
  factory _PortfolioState(
      {Currency currency,
      double amount,
      List<PortfolioItem> items}) = _$_PortfolioState;

  @override
  Currency get currency;
  @override
  double get amount;
  @override
  List<PortfolioItem> get items;
  @override
  _$PortfolioStateCopyWith<_PortfolioState> get copyWith;
}
