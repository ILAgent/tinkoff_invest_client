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
    return <Object?>[];
  }

  @override
  PortfolioState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new PortfolioStateBuilder().build();
  }
}

class _$PortfolioState extends PortfolioState {
  factory _$PortfolioState([void Function(PortfolioStateBuilder)? updates]) =>
      (new PortfolioStateBuilder()..update(updates)).build();

  _$PortfolioState._() : super._();

  @override
  PortfolioState rebuild(void Function(PortfolioStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PortfolioStateBuilder toBuilder() =>
      new PortfolioStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PortfolioState;
  }

  @override
  int get hashCode {
    return 16129972;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('PortfolioState').toString();
  }
}

class PortfolioStateBuilder
    implements Builder<PortfolioState, PortfolioStateBuilder> {
  _$PortfolioState? _$v;

  PortfolioStateBuilder();

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
    final _$result = _$v ?? new _$PortfolioState._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
