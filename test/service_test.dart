import 'package:flutter_test/flutter_test.dart';
import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest/services/api_service_extension.dart';

void main() async {
  final apiService = ApiService(); //await ApiService.sandbox();

  test("Portfolio test", () async {
    final res = await apiService.portfolio();
    print(res.toString());
  });

  test("Operations TEUR test", () async {
    final res = await apiService.operations(figi: "BBG000000002");
    print(res.toString());
  });

  test("Operations test", () async {
    final res = await apiService.operations();
    print(res.toString());
  });

  test("Income TEUR test", () async {
    const figi = "BBG000000002";

    final operations = await apiService.operations(figi: figi);
    final expenses =
        operations.operations.map((it) => it.payment).fold(0, (a, b) => a + b);

    final actualPrice = await apiService.actualPrice(figi);

    final portfolio = await apiService.portfolio();
    final teur = portfolio.positions.firstWhere((it) => it.figi == figi);

    final valueInPortfolio = teur.lots * actualPrice;

    expect(expenses + valueInPortfolio, equals(teur.expectedYield.value));
  });
}
