// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PortfolioState extends PortfolioState {
  @override
  final Currency currency;
  @override
  final double amount;

  factory _$PortfolioState([void Function(PortfolioStateBuilder) updates]) =>
      (new PortfolioStateBuilder()..update(updates)).build();

  _$PortfolioState._({this.currency, this.amount}) : super._() {
    if (currency == null) {
      throw new BuiltValueNullFieldError('PortfolioState', 'currency');
    }
    if (amount == null) {
      throw new BuiltValueNullFieldError('PortfolioState', 'amount');
    }
  }

  @override
  PortfolioState rebuild(void Function(PortfolioStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PortfolioStateBuilder toBuilder() =>
      new PortfolioStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PortfolioState &&
        currency == other.currency &&
        amount == other.amount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, currency.hashCode), amount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PortfolioState')
          ..add('currency', currency)
          ..add('amount', amount))
        .toString();
  }
}

class PortfolioStateBuilder
    implements Builder<PortfolioState, PortfolioStateBuilder> {
  _$PortfolioState _$v;

  Currency _currency;
  Currency get currency => _$this._currency;
  set currency(Currency currency) => _$this._currency = currency;

  double _amount;
  double get amount => _$this._amount;
  set amount(double amount) => _$this._amount = amount;

  PortfolioStateBuilder();

  PortfolioStateBuilder get _$this {
    if (_$v != null) {
      _currency = _$v.currency;
      _amount = _$v.amount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PortfolioState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PortfolioState;
  }

  @override
  void update(void Function(PortfolioStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PortfolioState build() {
    final _$result =
        _$v ?? new _$PortfolioState._(currency: currency, amount: amount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
