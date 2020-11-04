import 'package:built_collection/built_collection.dart';
import 'package:tinkoff_api/model/money_amount.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';

class InitAction {}

class TogglePortfolioCurrency {}

class ChangeTotalAmount {
  final MoneyAmount amount;

  ChangeTotalAmount(this.amount);
}

class UpdatePortfolioItems {
  final BuiltList<PortfolioItem> items;

  UpdatePortfolioItems(this.items);
}
