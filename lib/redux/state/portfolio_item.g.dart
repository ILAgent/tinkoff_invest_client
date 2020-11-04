// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PortfolioItem extends PortfolioItem {
  @override
  final PortfolioPosition portfolioPosition;
  @override
  final MoneyAmount actualPrice;

  factory _$PortfolioItem([void Function(PortfolioItemBuilder) updates]) =>
      (new PortfolioItemBuilder()..update(updates)).build();

  _$PortfolioItem._({this.portfolioPosition, this.actualPrice}) : super._() {
    if (portfolioPosition == null) {
      throw new BuiltValueNullFieldError('PortfolioItem', 'portfolioPosition');
    }
    if (actualPrice == null) {
      throw new BuiltValueNullFieldError('PortfolioItem', 'actualPrice');
    }
  }

  @override
  PortfolioItem rebuild(void Function(PortfolioItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PortfolioItemBuilder toBuilder() => new PortfolioItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PortfolioItem &&
        portfolioPosition == other.portfolioPosition &&
        actualPrice == other.actualPrice;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, portfolioPosition.hashCode), actualPrice.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PortfolioItem')
          ..add('portfolioPosition', portfolioPosition)
          ..add('actualPrice', actualPrice))
        .toString();
  }
}

class PortfolioItemBuilder
    implements Builder<PortfolioItem, PortfolioItemBuilder> {
  _$PortfolioItem _$v;

  PortfolioPositionBuilder _portfolioPosition;
  PortfolioPositionBuilder get portfolioPosition =>
      _$this._portfolioPosition ??= new PortfolioPositionBuilder();
  set portfolioPosition(PortfolioPositionBuilder portfolioPosition) =>
      _$this._portfolioPosition = portfolioPosition;

  MoneyAmountBuilder _actualPrice;
  MoneyAmountBuilder get actualPrice =>
      _$this._actualPrice ??= new MoneyAmountBuilder();
  set actualPrice(MoneyAmountBuilder actualPrice) =>
      _$this._actualPrice = actualPrice;

  PortfolioItemBuilder();

  PortfolioItemBuilder get _$this {
    if (_$v != null) {
      _portfolioPosition = _$v.portfolioPosition?.toBuilder();
      _actualPrice = _$v.actualPrice?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PortfolioItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PortfolioItem;
  }

  @override
  void update(void Function(PortfolioItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PortfolioItem build() {
    _$PortfolioItem _$result;
    try {
      _$result = _$v ??
          new _$PortfolioItem._(
              portfolioPosition: portfolioPosition.build(),
              actualPrice: actualPrice.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'portfolioPosition';
        portfolioPosition.build();
        _$failedField = 'actualPrice';
        actualPrice.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PortfolioItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
