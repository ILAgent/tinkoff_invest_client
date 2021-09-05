// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_page_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginPageState> _$loginPageStateSerializer =
    new _$LoginPageStateSerializer();

class _$LoginPageStateSerializer
    implements StructuredSerializer<LoginPageState> {
  @override
  final Iterable<Type> types = const [LoginPageState, _$LoginPageState];
  @override
  final String wireName = 'LoginPageState';

  @override
  Iterable<Object?> serialize(Serializers serializers, LoginPageState object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  LoginPageState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new LoginPageStateBuilder().build();
  }
}

class _$LoginPageState extends LoginPageState {
  factory _$LoginPageState([void Function(LoginPageStateBuilder)? updates]) =>
      (new LoginPageStateBuilder()..update(updates)).build();

  _$LoginPageState._() : super._();

  @override
  LoginPageState rebuild(void Function(LoginPageStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginPageStateBuilder toBuilder() =>
      new LoginPageStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginPageState;
  }

  @override
  int get hashCode {
    return 988541364;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('LoginPageState').toString();
  }
}

class LoginPageStateBuilder
    implements Builder<LoginPageState, LoginPageStateBuilder> {
  _$LoginPageState? _$v;

  LoginPageStateBuilder();

  @override
  void replace(LoginPageState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginPageState;
  }

  @override
  void update(void Function(LoginPageStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginPageState build() {
    final _$result = _$v ?? new _$LoginPageState._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
