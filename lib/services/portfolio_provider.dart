import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

class PortfolioProvider {
  final ApiService _apiService;

  Portfolio? _portfolio;

  PortfolioProvider(this._apiService);

  Future<Portfolio> portfolio() async {
    return _portfolio ?? (_portfolio = await _apiService.portfolio());
  }

  void invalidatePortfolio() {
    _portfolio = null;
  }
}
