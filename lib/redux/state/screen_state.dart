import 'package:tinkoff_invest/redux/state/portfolio/portfolio_state.dart';

abstract class ScreenState {
  ScreenState reduce(dynamic action);

  T acceptVisitor<T>(ScreenStateVisitor<T> visitor);
}

abstract class ScreenStateVisitor<T> {
  T visitPortfolio(PortfolioState state);
}
