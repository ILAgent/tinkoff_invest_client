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
      'groupId',
      serializers.serialize(object.groupId,
          specifiedType: const FullType(String)),
      'isEditMode',
      serializers.serialize(object.isEditMode,
          specifiedType: const FullType(bool)),
      'selectedItems',
      serializers.serialize(object.selectedItems,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
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
        case 'groupId':
          result.groupId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isEditMode':
          result.isEditMode = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'selectedItems':
          result.selectedItems.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GroupSettingsState extends GroupSettingsState {
  @override
  final String groupId;
  @override
  final bool isEditMode;
  @override
  final BuiltList<String> selectedItems;

  factory _$GroupSettingsState(
          [void Function(GroupSettingsStateBuilder)? updates]) =>
      (new GroupSettingsStateBuilder()..update(updates)).build();

  _$GroupSettingsState._(
      {required this.groupId,
      required this.isEditMode,
      required this.selectedItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupId, 'GroupSettingsState', 'groupId');
    BuiltValueNullFieldError.checkNotNull(
        isEditMode, 'GroupSettingsState', 'isEditMode');
    BuiltValueNullFieldError.checkNotNull(
        selectedItems, 'GroupSettingsState', 'selectedItems');
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
        groupId == other.groupId &&
        isEditMode == other.isEditMode &&
        selectedItems == other.selectedItems;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, groupId.hashCode), isEditMode.hashCode),
        selectedItems.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GroupSettingsState')
          ..add('groupId', groupId)
          ..add('isEditMode', isEditMode)
          ..add('selectedItems', selectedItems))
        .toString();
  }
}

class GroupSettingsStateBuilder
    implements Builder<GroupSettingsState, GroupSettingsStateBuilder> {
  _$GroupSettingsState? _$v;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  bool? _isEditMode;
  bool? get isEditMode => _$this._isEditMode;
  set isEditMode(bool? isEditMode) => _$this._isEditMode = isEditMode;

  ListBuilder<String>? _selectedItems;
  ListBuilder<String> get selectedItems =>
      _$this._selectedItems ??= new ListBuilder<String>();
  set selectedItems(ListBuilder<String>? selectedItems) =>
      _$this._selectedItems = selectedItems;

  GroupSettingsStateBuilder();

  GroupSettingsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupId = $v.groupId;
      _isEditMode = $v.isEditMode;
      _selectedItems = $v.selectedItems.toBuilder();
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
              groupId: BuiltValueNullFieldError.checkNotNull(
                  groupId, 'GroupSettingsState', 'groupId'),
              isEditMode: BuiltValueNullFieldError.checkNotNull(
                  isEditMode, 'GroupSettingsState', 'isEditMode'),
              selectedItems: selectedItems.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selectedItems';
        selectedItems.build();
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
