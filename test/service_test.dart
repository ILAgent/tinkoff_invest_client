import 'package:flutter_test/flutter_test.dart';
import 'package:tinkoff_invest/services/ApiService.dart';

void main() {
  test("Portfolio test", () async {
    final apiService = ApiService();
    final res = await apiService.portfolio();
    print(res.toString());
  });
}
