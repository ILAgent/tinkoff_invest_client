import 'package:tinkoff_api/model/portfolio_position.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'portfolio_item.freezed.dart';

@freezed
abstract class PortfolioItem with _$PortfolioItem {

  factory PortfolioItem({
    PortfolioPosition portfolioPosition,
    double actualPrice,
    double income
  }) = _PortfolioItem;

}