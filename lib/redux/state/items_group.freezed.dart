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
  _ItemsGroup call({@required String title}) {
    return _ItemsGroup(
      title: title,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ItemsGroup = _$ItemsGroupTearOff();

/// @nodoc
mixin _$ItemsGroup {
  String get title;

  $ItemsGroupCopyWith<ItemsGroup> get copyWith;
}

/// @nodoc
abstract class $ItemsGroupCopyWith<$Res> {
  factory $ItemsGroupCopyWith(
          ItemsGroup value, $Res Function(ItemsGroup) then) =
      _$ItemsGroupCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class _$ItemsGroupCopyWithImpl<$Res> implements $ItemsGroupCopyWith<$Res> {
  _$ItemsGroupCopyWithImpl(this._value, this._then);

  final ItemsGroup _value;
  // ignore: unused_field
  final $Res Function(ItemsGroup) _then;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
abstract class _$ItemsGroupCopyWith<$Res> implements $ItemsGroupCopyWith<$Res> {
  factory _$ItemsGroupCopyWith(
          _ItemsGroup value, $Res Function(_ItemsGroup) then) =
      __$ItemsGroupCopyWithImpl<$Res>;
  @override
  $Res call({String title});
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
    Object title = freezed,
  }) {
    return _then(_ItemsGroup(
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
class _$_ItemsGroup with DiagnosticableTreeMixin implements _ItemsGroup {
  _$_ItemsGroup({@required this.title}) : assert(title != null);

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemsGroup(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemsGroup'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemsGroup &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @override
  _$ItemsGroupCopyWith<_ItemsGroup> get copyWith =>
      __$ItemsGroupCopyWithImpl<_ItemsGroup>(this, _$identity);
}

abstract class _ItemsGroup implements ItemsGroup {
  factory _ItemsGroup({@required String title}) = _$_ItemsGroup;

  @override
  String get title;
  @override
  _$ItemsGroupCopyWith<_ItemsGroup> get copyWith;
}