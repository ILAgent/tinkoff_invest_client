import 'package:built_collection/built_collection.dart';
import 'package:tinkoff_invest/services/api_service.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

class OperationsProvider {
  final ApiService _apiService;
  Future<Operations>? _allOperations;

  OperationsProvider(this._apiService);

  Future<BuiltList<Operation>> operations({String? figi}) async {
    final all = await _getOperations();
    if (figi == null) return all.operations.toBuiltList();
    return all.operations.where((it) => it.figi == figi).toBuiltList();
  }

  Future<Operations> _getOperations() {
    return _allOperations ?? (_allOperations = _apiService.operations());
  }
}
