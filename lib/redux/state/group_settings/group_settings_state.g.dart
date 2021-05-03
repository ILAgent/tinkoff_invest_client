// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_settings_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GroupSettingsState> _$groupSettingsStateSerializer =
    new _$GroupSettingsStateSerializer();

class _$GroupSettingsStateSerializer
    implements StructuredSerializer<GroupSettingsState> {
  @override
  final Iterable<Type> types = const [GroupSettingsState, _$GroupSettingsState];
  @override
  final String wireName = 'GroupSettingsState';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GroupSettingsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'group',
      serializers.serialize(object.group,
          specifiedType: const FullType(ItemsGroup)),
      'isEditMode',
      serializers.serialize(object.isEditMode,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GroupSettingsState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GroupSettingsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'group':
          result.group.replace(serializers.deserialize(value,
              specifiedType: const FullType(ItemsGroup))! as ItemsGroup);
          break;
        case 'isEditMode':
          result.isEditMode = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GroupSettingsState extends GroupSettingsState {
  @override
  final ItemsGroup group;
  @override
  final bool isEditMode;

  factory _$GroupSettingsState(
          [void Function(GroupSettingsStateBuilder)? updates]) =>
      (new GroupSettingsStateBuilder()..update(updates)).build();

  _$GroupSettingsState._({required this.group, required this.isEditMode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(group, 'GroupSettingsState', 'group');
    BuiltValueNullFieldError.checkNotNull(
        isEditMode, 'GroupSettingsState', 'isEditMode');
  }

  @override
  GroupSettingsState rebuild(
          void Function(GroupSettingsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupSettingsStateBuilder toBuilder() =>
      new GroupSettingsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupSettingsState &&
        group == other.group &&
        isEditMode == other.isEditMode;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, group.hashCode), isEditMode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GroupSettingsState')
          ..add('group', group)
          ..add('isEditMode', isEditMode))
        .toString();
  }
}

class GroupSettingsStateBuilder
    implements Builder<GroupSettingsState, GroupSettingsStateBuilder> {
  _$GroupSettingsState? _$v;

  ItemsGroupBuilder? _group;
  ItemsGroupBuilder get group => _$this._group ??= new ItemsGroupBuilder();
  set group(ItemsGroupBuilder? group) => _$this._group = group;

  bool? _isEditMode;
  bool? get isEditMode => _$this._isEditMode;
  set isEditMode(bool? isEditMode) => _$this._isEditMode = isEditMode;

  GroupSettingsStateBuilder();

  GroupSettingsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _group = $v.group.toBuilder();
      _isEditMode = $v.isEditMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupSettingsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupSettingsState;
  }

  @override
  void update(void Function(GroupSettingsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GroupSettingsState build() {
    _$GroupSettingsState _$result;
    try {
      _$result = _$v ??
          new _$GroupSettingsState._(
              group: group.build(),
              isEditMode: BuiltValueNullFieldError.checkNotNull(
                  isEditMode, 'GroupSettingsState', 'isEditMode'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'group';
        group.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GroupSettingsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
