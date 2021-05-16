import 'package:built_collection/built_collection.dart';
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

  AddGroup(String title)
      : group = ItemsGroup((b) => b
          ..title = title
          ..id = Uuid().v1());
}

class DeleteGroup {
  final String groupId;

  DeleteGroup(this.groupId);
}

class OpenGroupSettings {
  final ItemsGroup group;

  OpenGroupSettings(this.group);
}

class EditGroup {}

class CancelGroupChanges {}

class ApplyGroupChanges {
  String id;
  String title;
  BuiltList<String> figis;

  ApplyGroupChanges(this.id, this.title, this.figis);
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
