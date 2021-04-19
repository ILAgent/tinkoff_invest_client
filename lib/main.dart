import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/portfolio_store.dart';
import 'package:tinkoff_invest/redux/state/screen_state_to_widget.dart';

import 'di/di.dart';

Future<void> main() async {
  await initDI();
  runApp(di.get<AppWidget>());
}

class AppWidget extends StatelessWidget {
  final AppStore _store;
  final ScreenStateToWidget _statesMapper;

  AppWidget(this._store, this._statesMapper);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tinkoff investor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Navigator(
          pages: _store.state.backStack
              .map((screen) => screen.acceptVisitor(_statesMapper))
              .map((widget) => MaterialPage(child: widget))
              .toList(),
          onPopPage: (route, result) {
            return false;
          },
        ),
      ),
    );
  }
}
