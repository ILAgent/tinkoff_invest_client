
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_invest/redux/state/items_group.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';

part 'portfolio_list_element.freezed.dart';

@freezed
abstract class PortfolioListElement with _$PortfolioListElement {
  factory PortfolioListElement.item(PortfolioItem item) = _Item;
  factory PortfolioListElement.group(ItemsGroup group) = _Group;
}
