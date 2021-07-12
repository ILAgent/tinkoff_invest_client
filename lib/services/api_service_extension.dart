import 'dart:core';

import 'package:collection/collection.dart';
import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

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

  Future<void> operationsGroupedByType() async {
    final Operations opers = await operations();
    final Map<OperationTypeWithCommission, List<Operation>> byType =
        groupBy(opers.operations, (Operation op) => op.operationType!);
    print(byType.toString());
  }
}
