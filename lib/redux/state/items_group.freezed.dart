// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'items_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemsGroupTearOff {
  const _$ItemsGroupTearOff();

// ignore: unused_element
  _ItemsGroup call(
      {@required String id,
      @required String title,
      double actualPrice,
      double income}) {
    return _ItemsGroup(
      id: id,
      title: title,
      actualPrice: actualPrice,
      income: income,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ItemsGroup = _$ItemsGroupTearOff();

/// @nodoc
mixin _$ItemsGroup {
  String get id;
  String get title;
  double get actualPrice;
  double get income;

  $ItemsGroupCopyWith<ItemsGroup> get copyWith;
}

/// @nodoc
abstract class $ItemsGroupCopyWith<$Res> {
  factory $ItemsGroupCopyWith(
          ItemsGroup value, $Res Function(ItemsGroup) then) =
      _$ItemsGroupCopyWithImpl<$Res>;
  $Res call({String id, String title, double actualPrice, double income});
}

/// @nodoc
class _$ItemsGroupCopyWithImpl<$Res> implements $ItemsGroupCopyWith<$Res> {
  _$ItemsGroupCopyWithImpl(this._value, this._then);

  final ItemsGroup _value;
  // ignore: unused_field
  final $Res Function(ItemsGroup) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object actualPrice = freezed,
    Object income = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      actualPrice:
          actualPrice == freezed ? _value.actualPrice : actualPrice as double,
      income: income == freezed ? _value.income : income as double,
    ));
  }
}

/// @nodoc
abstract class _$ItemsGroupCopyWith<$Res> implements $ItemsGroupCopyWith<$Res> {
  factory _$ItemsGroupCopyWith(
          _ItemsGroup value, $Res Function(_ItemsGroup) then) =
      __$ItemsGroupCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, double actualPrice, double income});
}

/// @nodoc
class __$ItemsGroupCopyWithImpl<$Res> extends _$ItemsGroupCopyWithImpl<$Res>
    implements _$ItemsGroupCopyWith<$Res> {
  __$ItemsGroupCopyWithImpl(
      _ItemsGroup _value, $Res Function(_ItemsGroup) _then)
      : super(_value, (v) => _then(v as _ItemsGroup));

  @override
  _ItemsGroup get _value => super._value as _ItemsGroup;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object actualPrice = freezed,
    Object income = freezed,
  }) {
    return _then(_ItemsGroup(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      actualPrice:
          actualPrice == freezed ? _value.actualPrice : actualPrice as double,
      income: income == freezed ? _value.income : income as double,
    ));
  }
}

/// @nodoc
class _$_ItemsGroup with DiagnosticableTreeMixin implements _ItemsGroup {
  _$_ItemsGroup(
      {@required this.id, @required this.title, this.actualPrice, this.income})
      : assert(id != null),
        assert(title != null);

  @override
  final String id;
  @override
  final String title;
  @override
  final double actualPrice;
  @override
  final double income;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemsGroup(id: $id, title: $title, actualPrice: $actualPrice, income: $income)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemsGroup'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('actualPrice', actualPrice))
      ..add(DiagnosticsProperty('income', income));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemsGroup &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.actualPrice, actualPrice) ||
                const DeepCollectionEquality()
                    .equals(other.actualPrice, actualPrice)) &&
            (identical(other.income, income) ||
                const DeepCollectionEquality().equals(other.income, income)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(actualPrice) ^
      const DeepCollectionEquality().hash(income);

  @override
  _$ItemsGroupCopyWith<_ItemsGroup> get copyWith =>
      __$ItemsGroupCopyWithImpl<_ItemsGroup>(this, _$identity);
}

abstract class _ItemsGroup implements ItemsGroup {
  factory _ItemsGroup(
      {@required String id,
      @required String title,
      double actualPrice,
      double income}) = _$_ItemsGroup;

  @override
  String get id;
  @override
  String get title;
  @override
  double get actualPrice;
  @override
  double get income;
  @override
  _$ItemsGroupCopyWith<_ItemsGroup> get copyWith;
}
