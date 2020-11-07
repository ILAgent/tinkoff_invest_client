// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'portfolio_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PortfolioItemTearOff {
  const _$PortfolioItemTearOff();

// ignore: unused_element
  _PortfolioItem call(
      {PortfolioPosition portfolioPosition,
      double actualPrice,
      double income}) {
    return _PortfolioItem(
      portfolioPosition: portfolioPosition,
      actualPrice: actualPrice,
      income: income,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PortfolioItem = _$PortfolioItemTearOff();

/// @nodoc
mixin _$PortfolioItem {
  PortfolioPosition get portfolioPosition;
  double get actualPrice;
  double get income;

  $PortfolioItemCopyWith<PortfolioItem> get copyWith;
}

/// @nodoc
abstract class $PortfolioItemCopyWith<$Res> {
  factory $PortfolioItemCopyWith(
          PortfolioItem value, $Res Function(PortfolioItem) then) =
      _$PortfolioItemCopyWithImpl<$Res>;
  $Res call(
      {PortfolioPosition portfolioPosition, double actualPrice, double income});
}

/// @nodoc
class _$PortfolioItemCopyWithImpl<$Res>
    implements $PortfolioItemCopyWith<$Res> {
  _$PortfolioItemCopyWithImpl(this._value, this._then);

  final PortfolioItem _value;
  // ignore: unused_field
  final $Res Function(PortfolioItem) _then;

  @override
  $Res call({
    Object portfolioPosition = freezed,
    Object actualPrice = freezed,
    Object income = freezed,
  }) {
    return _then(_value.copyWith(
      portfolioPosition: portfolioPosition == freezed
          ? _value.portfolioPosition
          : portfolioPosition as PortfolioPosition,
      actualPrice:
          actualPrice == freezed ? _value.actualPrice : actualPrice as double,
      income: income == freezed ? _value.income : income as double,
    ));
  }
}

/// @nodoc
abstract class _$PortfolioItemCopyWith<$Res>
    implements $PortfolioItemCopyWith<$Res> {
  factory _$PortfolioItemCopyWith(
          _PortfolioItem value, $Res Function(_PortfolioItem) then) =
      __$PortfolioItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {PortfolioPosition portfolioPosition, double actualPrice, double income});
}

/// @nodoc
class __$PortfolioItemCopyWithImpl<$Res>
    extends _$PortfolioItemCopyWithImpl<$Res>
    implements _$PortfolioItemCopyWith<$Res> {
  __$PortfolioItemCopyWithImpl(
      _PortfolioItem _value, $Res Function(_PortfolioItem) _then)
      : super(_value, (v) => _then(v as _PortfolioItem));

  @override
  _PortfolioItem get _value => super._value as _PortfolioItem;

  @override
  $Res call({
    Object portfolioPosition = freezed,
    Object actualPrice = freezed,
    Object income = freezed,
  }) {
    return _then(_PortfolioItem(
      portfolioPosition: portfolioPosition == freezed
          ? _value.portfolioPosition
          : portfolioPosition as PortfolioPosition,
      actualPrice:
          actualPrice == freezed ? _value.actualPrice : actualPrice as double,
      income: income == freezed ? _value.income : income as double,
    ));
  }
}

/// @nodoc
class _$_PortfolioItem with DiagnosticableTreeMixin implements _PortfolioItem {
  _$_PortfolioItem({this.portfolioPosition, this.actualPrice, this.income});

  @override
  final PortfolioPosition portfolioPosition;
  @override
  final double actualPrice;
  @override
  final double income;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PortfolioItem(portfolioPosition: $portfolioPosition, actualPrice: $actualPrice, income: $income)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PortfolioItem'))
      ..add(DiagnosticsProperty('portfolioPosition', portfolioPosition))
      ..add(DiagnosticsProperty('actualPrice', actualPrice))
      ..add(DiagnosticsProperty('income', income));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PortfolioItem &&
            (identical(other.portfolioPosition, portfolioPosition) ||
                const DeepCollectionEquality()
                    .equals(other.portfolioPosition, portfolioPosition)) &&
            (identical(other.actualPrice, actualPrice) ||
                const DeepCollectionEquality()
                    .equals(other.actualPrice, actualPrice)) &&
            (identical(other.income, income) ||
                const DeepCollectionEquality().equals(other.income, income)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(portfolioPosition) ^
      const DeepCollectionEquality().hash(actualPrice) ^
      const DeepCollectionEquality().hash(income);

  @override
  _$PortfolioItemCopyWith<_PortfolioItem> get copyWith =>
      __$PortfolioItemCopyWithImpl<_PortfolioItem>(this, _$identity);
}

abstract class _PortfolioItem implements PortfolioItem {
  factory _PortfolioItem(
      {PortfolioPosition portfolioPosition,
      double actualPrice,
      double income}) = _$_PortfolioItem;

  @override
  PortfolioPosition get portfolioPosition;
  @override
  double get actualPrice;
  @override
  double get income;
  @override
  _$PortfolioItemCopyWith<_PortfolioItem> get copyWith;
}