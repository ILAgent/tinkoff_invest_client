import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tinkoff_invest/utils/iterable_etensions.dart';

class Data {
  double value = 0;
}

void main() {
  test("Generic test", () async {
    final List<Data> list = [
      Data()..value = 1,
      Data()..value = 2,
      Data()..value = 3,
    ];
    final sum = list.sumAsync((data) async => data.value);
    expect(sum, equals(6));
  });

  test("Collections test", () {
    List<int> rawList = [0, 1, 2];
    //BuiltList<int> list = rawList; compile error
    BuiltList<int> list = rawList.map((n) => n * 2);
  });
}
