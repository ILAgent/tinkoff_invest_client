import 'package:tinkoff_api/model/currency.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/portfolio_state.dart';

PortfolioState reducePortfolioState(PortfolioState state, dynamic action) {
  if (action is TogglePortfolioCurrency) {
    switch (state.currency) {
      case Currency.rUB:
        return state.rebuild((b) => b..currency = Currency.uSD);
      case Currency.uSD:
        return state.rebuild((b) => b..currency = Currency.eUR);
      default:
        return state.rebuild((b) => b..currency = Currency.rUB);
    }
  }
  return state;
}
