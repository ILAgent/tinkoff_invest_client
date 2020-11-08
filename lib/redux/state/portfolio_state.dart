import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_api/model/currency.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';
import 'package:flutter/foundation.dart';

part 'portfolio_state.freezed.dart';

@freezed
abstract class PortfolioState with _$PortfolioState {
  factory PortfolioState({
    Currency currency,
    double amount,
    List<PortfolioItem> items,
  }) = _PortfolioState;

}
