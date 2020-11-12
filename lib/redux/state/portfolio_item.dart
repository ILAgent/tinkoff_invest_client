import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_api/model/portfolio_position.dart';
import 'package:tinkoff_invest/redux/state/items_group.dart';

part 'portfolio_item.freezed.dart';

@freezed
abstract class PortfolioItem with _$PortfolioItem {
  factory PortfolioItem({
    @required PortfolioPosition portfolioPosition,
    double actualPrice,
    double income,
    ItemsGroup group,
  }) = _PortfolioItem;
}
