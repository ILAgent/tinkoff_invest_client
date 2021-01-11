import 'dart:core';

import 'package:collection/collection.dart';
import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest_api/model/candle_resolution.dart';
import 'package:tinkoff_invest_api/model/operation.dart';
import 'package:tinkoff_invest_api/model/operation_type_with_commission.dart';
import 'package:tinkoff_invest_api/model/operations.dart';

extension ApiServiceExtension on ApiService {
  Future<double> actualPrice(String figi) async {
    final now = DateTime.now().toUtc();
    final candles = await this.candles(
      figi,
      now.subtract(Duration(days: 15)),
      now,
      CandleResolution.day,
    );
    return candles.candles.last.c;
  }

  Future<double> income(String figi) async {
    final operations = await this.operations(figi: figi);
    final expenses = operations.operations.map((it) => it.payment).fold<double>(0.0, (a, b) => a + b);

    final actualPrice = await this.actualPrice(figi);

    final portfolio = await this.portfolio();
    final inPortfolio = portfolio.positions.firstWhere((it) => it.figi == figi);

    final valueInPortfolio = inPortfolio.lots * actualPrice;

    return expenses + valueInPortfolio;
  }

  Future<void> operationsGroupedByType() async {
    final Operations opers = await operations();
    final Map<OperationTypeWithCommission, List<Operation>> byType = groupBy(opers.operations, (Operation op) => op.operationType);
    print(byType.toString());
  }
}
