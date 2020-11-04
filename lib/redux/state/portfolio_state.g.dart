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
  @override
  final BuiltList<PortfolioPosition> positions;

  factory _$PortfolioState([void Function(PortfolioStateBuilder) updates]) =>
      (new PortfolioStateBuilder()..update(updates)).build();

  _$PortfolioState._({this.currency, this.amount, this.positions}) : super._() {
    if (currency == null) {
      throw new BuiltValueNullFieldError('PortfolioState', 'currency');
    }
    if (amount == null) {
      throw new BuiltValueNullFieldError('PortfolioState', 'amount');
    }
    if (positions == null) {
      throw new BuiltValueNullFieldError('PortfolioState', 'positions');
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
        amount == other.amount &&
        positions == other.positions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, currency.hashCode), amount.hashCode), positions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PortfolioState')
          ..add('currency', currency)
          ..add('amount', amount)
          ..add('positions', positions))
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

  ListBuilder<PortfolioPosition> _positions;
  ListBuilder<PortfolioPosition> get positions =>
      _$this._positions ??= new ListBuilder<PortfolioPosition>();
  set positions(ListBuilder<PortfolioPosition> positions) =>
      _$this._positions = positions;

  PortfolioStateBuilder();

  PortfolioStateBuilder get _$this {
    if (_$v != null) {
      _currency = _$v.currency;
      _amount = _$v.amount;
      _positions = _$v.positions?.toBuilder();
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
    _$PortfolioState _$result;
    try {
      _$result = _$v ??
          new _$PortfolioState._(
              currency: currency, amount: amount, positions: positions.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'positions';
        positions.build();
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
