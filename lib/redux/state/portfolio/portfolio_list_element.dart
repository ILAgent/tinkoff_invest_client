import 'package:tinkoff_invest/redux/state/portfolio/items_group.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_item.dart';

abstract class PortfolioListElement {
  T acceptVisitor<T>(PortfolioListElementVisitor<T> visitor);
}

abstract class PortfolioListElementVisitor<T> {
  T visitGroup(ItemsGroup itemsGroup);

  T visitItem(PortfolioItem item);
}
