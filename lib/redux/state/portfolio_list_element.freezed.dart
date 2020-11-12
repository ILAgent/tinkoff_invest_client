// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'portfolio_list_element.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PortfolioListElementTearOff {
  const _$PortfolioListElementTearOff();

// ignore: unused_element
  _Item item(PortfolioItem item) {
    return _Item(
      item,
    );
  }

// ignore: unused_element
  _Group group(ItemsGroup group) {
    return _Group(
      group,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PortfolioListElement = _$PortfolioListElementTearOff();

/// @nodoc
mixin _$PortfolioListElement {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result item(PortfolioItem item),
    @required Result group(ItemsGroup group),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result item(PortfolioItem item),
    Result group(ItemsGroup group),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result item(_Item value),
    @required Result group(_Group value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result item(_Item value),
    Result group(_Group value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PortfolioListElementCopyWith<$Res> {
  factory $PortfolioListElementCopyWith(PortfolioListElement value,
          $Res Function(PortfolioListElement) then) =
      _$PortfolioListElementCopyWithImpl<$Res>;
}

/// @nodoc
class _$PortfolioListElementCopyWithImpl<$Res>
    implements $PortfolioListElementCopyWith<$Res> {
  _$PortfolioListElementCopyWithImpl(this._value, this._then);

  final PortfolioListElement _value;
  // ignore: unused_field
  final $Res Function(PortfolioListElement) _then;
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  $Res call({PortfolioItem item});

  $PortfolioItemCopyWith<$Res> get item;
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$PortfolioListElementCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(_Item(
      item == freezed ? _value.item : item as PortfolioItem,
    ));
  }

  @override
  $PortfolioItemCopyWith<$Res> get item {
    if (_value.item == null) {
      return null;
    }
    return $PortfolioItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
class _$_Item with DiagnosticableTreeMixin implements _Item {
  _$_Item(this.item) : assert(item != null);

  @override
  final PortfolioItem item;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PortfolioListElement.item(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PortfolioListElement.item'))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result item(PortfolioItem item),
    @required Result group(ItemsGroup group),
  }) {
    assert(item != null);
    assert(group != null);
    return item(this.item);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result item(PortfolioItem item),
    Result group(ItemsGroup group),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (item != null) {
      return item(this.item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result item(_Item value),
    @required Result group(_Group value),
  }) {
    assert(item != null);
    assert(group != null);
    return item(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result item(_Item value),
    Result group(_Group value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (item != null) {
      return item(this);
    }
    return orElse();
  }
}

abstract class _Item implements PortfolioListElement {
  factory _Item(PortfolioItem item) = _$_Item;

  PortfolioItem get item;
  _$ItemCopyWith<_Item> get copyWith;
}

/// @nodoc
abstract class _$GroupCopyWith<$Res> {
  factory _$GroupCopyWith(_Group value, $Res Function(_Group) then) =
      __$GroupCopyWithImpl<$Res>;
  $Res call({ItemsGroup group});

  $ItemsGroupCopyWith<$Res> get group;
}

/// @nodoc
class __$GroupCopyWithImpl<$Res>
    extends _$PortfolioListElementCopyWithImpl<$Res>
    implements _$GroupCopyWith<$Res> {
  __$GroupCopyWithImpl(_Group _value, $Res Function(_Group) _then)
      : super(_value, (v) => _then(v as _Group));

  @override
  _Group get _value => super._value as _Group;

  @override
  $Res call({
    Object group = freezed,
  }) {
    return _then(_Group(
      group == freezed ? _value.group : group as ItemsGroup,
    ));
  }

  @override
  $ItemsGroupCopyWith<$Res> get group {
    if (_value.group == null) {
      return null;
    }
    return $ItemsGroupCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc
class _$_Group with DiagnosticableTreeMixin implements _Group {
  _$_Group(this.group) : assert(group != null);

  @override
  final ItemsGroup group;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PortfolioListElement.group(group: $group)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PortfolioListElement.group'))
      ..add(DiagnosticsProperty('group', group));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Group &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(group);

  @override
  _$GroupCopyWith<_Group> get copyWith =>
      __$GroupCopyWithImpl<_Group>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result item(PortfolioItem item),
    @required Result group(ItemsGroup group),
  }) {
    assert(item != null);
    assert(group != null);
    return group(this.group);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result item(PortfolioItem item),
    Result group(ItemsGroup group),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (group != null) {
      return group(this.group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result item(_Item value),
    @required Result group(_Group value),
  }) {
    assert(item != null);
    assert(group != null);
    return group(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result item(_Item value),
    Result group(_Group value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (group != null) {
      return group(this);
    }
    return orElse();
  }
}

abstract class _Group implements PortfolioListElement {
  factory _Group(ItemsGroup group) = _$_Group;

  ItemsGroup get group;
  _$GroupCopyWith<_Group> get copyWith;
}
