// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tinkoff_invest/main.dart';
import 'package:tinkoff_invest/redux/portfolio_store.dart';
import 'package:tinkoff_invest/redux/state/portfolio_state.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(AppWidget(_StoreStub()));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

class _StoreStub implements PortfolioStore {
  @override
  late var reducer;

  @override
  dynamic dispatch(action) {
    // TODO: implement dispatch
    throw UnimplementedError();
  }

  @override
  // TODO: implement onChange
  Stream<PortfolioState> get onChange => throw UnimplementedError();

  @override
  // TODO: implement state
  PortfolioState get state => throw UnimplementedError();

  @override
  Future teardown() {
    // TODO: implement teardown
    throw UnimplementedError();
  }
}
