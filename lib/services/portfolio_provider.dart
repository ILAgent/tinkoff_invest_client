import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

class PortfolioProvider {
  final ApiService _apiService;

  Future<Portfolio>? _portfolioFuture;

  PortfolioProvider(this._apiService);

  Future<Portfolio> portfolio() {
    return _portfolioFuture ?? (_portfolioFuture = _apiService.portfolio());
  }

  void invalidatePortfolio() {
    _portfolioFuture = null;
  }
}
