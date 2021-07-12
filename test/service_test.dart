import 'dart:collection';

import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest/services/api_service_extension.dart';
import 'package:tinkoff_invest/services/currencies_converter.dart';
import 'package:tinkoff_invest/services/income_calculator.dart';
import 'package:tinkoff_invest/services/portfolio_provider.dart';
import 'package:tinkoff_invest/services/total_money_calculator.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

void main() async {
  final apiService = ApiService(); //await ApiService.sandbox();
  final curConverter = CurrenciesConverter(apiService);
  final portfolioProvider = PortfolioProvider(apiService);
  final amountCalc = TotalMoneyCalculator(
      apiService, curConverter, portfolioProvider);
  final incomeCalc = IncomeCalculator(apiService, portfolioProvider)

  test("Portfolio test", () async {
    final res = await apiService.portfolio();
    print(res.toString());
  });

  test("Operations TEUR test", () async {
    final res = await apiService.operations(figi: "BBG000000002");
    print(res.toString());
  });

  test("Operations test", () async {
    final res = await apiService
        .operations()
        .then((ops) => ops.operations.where((op) => op.figi == "BBG009J3VGJ3"));
    print(IterableBase.iterableToFullString(res));
  });

  test("Income TEUR test", () async {
    const figi = "BBG000000002";

    final portfolio = await apiService.portfolio();
    final teur = portfolio.positions.firstWhere((it) => it.figi == figi);

    expect(await incomeCalc.income(figi), equals(teur.expectedYield!.value));
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
    final res = await curConverter.convert(
        MoneyAmount((b) => b
          ..currency = Currency.RUB
          ..value = 1),
        Currency.EUR);
    print(res);
  });

  test("Total amount", () async {
    final res = await amountCalc.sumPositionsAmount(Currency.EUR);
    print(res);
  });

  test("ops grouped by type", () async {
    await apiService.operationsGroupedByType();
  });

  test("tickers list", () async {
    final Iterable<Operation> opers = await apiService
        .operations() //
        .then((value) => value.operations.where((op) => op.figi != null));
    final Map<String, List<Operation>> byFigi =
        groupBy(opers, (Operation op) => op.figi!);
    final tickers = await Stream.fromIterable(byFigi.keys) //
        .asyncMap((figi) => apiService.instrumentByFigi(figi))
        .map((event) => event.ticker)
        .toList();
    print(tickers);
  });

  test("tickers balances", () async {
    final Iterable<Operation> opers = await apiService.operations().then(
        (value) => value.operations.where((op) =>
            op.operationType == OperationTypeWithCommission.buy ||
            op.operationType == OperationTypeWithCommission.sell ||
            op.operationType == OperationTypeWithCommission.buyCard));
    final Map<String, List<Operation>> byFigi =
        groupBy(opers, (Operation op) => op.figi!);

    final figiBalances = byFigi.map((key, value) {
      return MapEntry(
          key,
          value.fold<int>(0, (previousValue, op) {
            final sign =
                op.operationType == OperationTypeWithCommission.sell ? -1 : 1;
            return previousValue + op.quantityExecuted! * sign;
          }));
    });

    final result =
        await Stream.fromIterable(figiBalances.entries).asyncMap((e) async {
      final ticker = await apiService.instrumentByFigi(e.key);
      return MapEntry(ticker.ticker, e.value);
    }).toList();
    print(result);
  });

  test("previous tickers income", () async {
    final Iterable<Operation> opers = await apiService
        .operations()
        .then((value) => value.operations.where((op) => op.figi != null));

    final Map<String, List<Operation>> byFigi =
        groupBy(opers, (Operation op) => op.figi!);

    final figiIncomes = byFigi.entries.map((e) {
      final balance = e.value.fold<int>(0, (previousValue, op) {
        final sign =
            op.operationType == OperationTypeWithCommission.sell ? -1 : 1;
        return previousValue + (op.quantityExecuted ?? 0) * sign;
      });
      final income = e.value.fold<double>(0.0, (previousValue, op) {
        return previousValue + op.payment;
      });
      return _Income("", e.key, balance, income);
    });

    final result = await Stream.fromIterable(figiIncomes)
        .asyncMap((e) async {
          final ticker = await apiService.instrumentByFigi(e.figi);
          return _Income(ticker.name, ticker.figi, e.balance, e.income);
        })
        .where((e) => e.balance == 0)
        .toList();
    print(result);
  });
}

class _Income {
  final String name;
  final String figi;
  final int balance;
  final double income;

  _Income(this.name, this.figi, this.balance, this.income);

  @override
  String toString() {
    return "($figi, $name, balance:$balance, income:$income)\n";
  }
}
