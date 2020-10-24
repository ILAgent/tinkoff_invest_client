import 'package:flutter_test/flutter_test.dart';
import 'package:tinkoff_invest/services/api_service.dart';

void main() async {
  final apiService = ApiService();//await ApiService.sandbox();

  test("Portfolio test", () async {
    final res = await apiService.portfolio();
    print(res.toString());
  });

  test("Operations test", () async {
    final res = await apiService.operations();
    print(res.toString());
  });
}
