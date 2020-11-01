import 'package:flutter_test/flutter_test.dart';
import 'package:tinkoff_api/model/currency.dart';
import 'package:tinkoff_api/model/money_amount.dart';
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

    final portfolio = await apiService.portfolio();
    final teur = portfolio.positions.firstWhere((it) => it.figi == figi);

    expect(await apiService.income(figi), equals(teur.expectedYield.value));
  });

  test("Max requests test", () async {
    int i = 0;
    while (true) {
      await apiService.operations();
      ++i;
      print("${DateTime.now()} $i");
    }
  });

  test("Currensies", () async {
    final res = await apiService.currencies();
    print(res);
  });

  test("Converter", () async {
    final res = await apiService.convert(
        MoneyAmount((b) => b
          ..currency = Currency.rUB
          ..value = 1),
        Currency.eUR);
    print(res);
  });
}
