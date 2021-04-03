import 'package:tinkoff_invest/redux/state/items_group.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';
import 'package:uuid/uuid.dart';

class InitAction {}

class TogglePortfolioCurrency {}

class ChangeTotalAmount {
  final MoneyAmount amount;

  ChangeTotalAmount(this.amount);
}

class UpdatePortfolioItems {
  final List<PortfolioItem> items;

  UpdatePortfolioItems(this.items);
}

class UpdatePortfolioItem {
  final PortfolioItem item;

  UpdatePortfolioItem(this.item);
}

class AddGroup {
  final ItemsGroup group;

  AddGroup()
      : group = ItemsGroup((b) => b
          ..title = 'Новая группа'
          ..id = Uuid().v1());
}

class EditGroup {
  final ItemsGroup group;

  EditGroup(this.group);
}

class UpdateGroupTitle {
  final String title;
  final String id;

  UpdateGroupTitle({required this.title, required this.id});
}

class UpdateGroupAmounts {
  final double? amount;
  final double? income;
  final String id;

  UpdateGroupAmounts({this.amount, this.income, required this.id});
}
