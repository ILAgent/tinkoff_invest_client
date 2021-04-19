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
  Iterable<Object?> serialize(Serializers serializers, PortfolioState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.groupEditing;
    if (value != null) {
      result
        ..add('groupEditing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ItemsGroup)));
    }
    return result;
  }

  @override
  PortfolioState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PortfolioStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'groupEditing':
          result.groupEditing.replace(serializers.deserialize(value,
              specifiedType: const FullType(ItemsGroup))! as ItemsGroup);
          break;
      }
    }

    return result.build();
  }
}

class _$PortfolioState extends PortfolioState {
  @override
  final ItemsGroup? groupEditing;

  factory _$PortfolioState([void Function(PortfolioStateBuilder)? updates]) =>
      (new PortfolioStateBuilder()..update(updates)).build();

  _$PortfolioState._({this.groupEditing}) : super._();

  @override
  PortfolioState rebuild(void Function(PortfolioStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PortfolioStateBuilder toBuilder() =>
      new PortfolioStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PortfolioState && groupEditing == other.groupEditing;
  }

  @override
  int get hashCode {
    return $jf($jc(0, groupEditing.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PortfolioState')
          ..add('groupEditing', groupEditing))
        .toString();
  }
}

class PortfolioStateBuilder
    implements Builder<PortfolioState, PortfolioStateBuilder> {
  _$PortfolioState? _$v;

  ItemsGroupBuilder? _groupEditing;
  ItemsGroupBuilder get groupEditing =>
      _$this._groupEditing ??= new ItemsGroupBuilder();
  set groupEditing(ItemsGroupBuilder? groupEditing) =>
      _$this._groupEditing = groupEditing;

  PortfolioStateBuilder();

  PortfolioStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupEditing = $v.groupEditing?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PortfolioState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PortfolioState;
  }

  @override
  void update(void Function(PortfolioStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PortfolioState build() {
    _$PortfolioState _$result;
    try {
      _$result =
          _$v ?? new _$PortfolioState._(groupEditing: _groupEditing?.build());
    } catch (_) {
      late String _$failedField;
      try {
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
