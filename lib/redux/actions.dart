import 'package:tinkoff_invest/redux/state/portfolio/items_group.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_item.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';
import 'package:uuid/uuid.dart';

class InitAction {}

class GoBack {}

class TogglePortfolioCurrency {}

class ShowSettings {}

class ChangeTotalAmount {
  final MoneyAmount amount;

  ChangeTotalAmount(this.amount);
}

class InitPortfolioItems {
  final List<PortfolioItem> items;

  InitPortfolioItems(this.items);
}

class UpdatePortfolioItemValues {
  final String figi;
  final double? actualPrice;
  final double? income;

  UpdatePortfolioItemValues(this.figi, this.actualPrice, this.income);
}

class UpdatePortfolioItemGroup {
  final String figi;
  final String? groupId;

  UpdatePortfolioItemGroup(this.figi, this.groupId);
}

class AddGroup {
  final ItemsGroup group;

  AddGroup()
      : group = ItemsGroup((b) => b
          ..title = 'Новая группа'
          ..id = Uuid().v1());
}

class DeleteGroup {
  final String groupId;

  DeleteGroup(this.groupId);
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
