import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest/services/portfolio_provider.dart';

import 'actual_price_provider.dart';

class IncomeCalculator {
  final ApiService _apiService;
  final PortfolioProvider _portfolioProvider;
  final ActualPriceProvider _actualPriceProvider;

  IncomeCalculator(
      this._apiService, this._portfolioProvider, this._actualPriceProvider);

  Future<double> income(String figi) async {
    final operations = await _apiService.operations(figi: figi);
    final expenses = operations.operations
        .map((it) => it.payment)
        .fold<double>(0.0, (a, b) => a + b);

    final actualPrice = await _actualPriceProvider.actualPrice(figi);

    final portfolio = await _portfolioProvider.portfolio();
    final inPortfolio = portfolio.positions.firstWhere((it) => it.figi == figi);

    final valueInPortfolio = inPortfolio.lots * actualPrice;

    return expenses + valueInPortfolio;
  }
}
