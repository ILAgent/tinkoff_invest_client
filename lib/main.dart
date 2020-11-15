import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/portfolio_store.dart';
import 'package:tinkoff_invest/view/portfolio/portfolio_widget.dart';

import 'di/di.dart';

void main() {
  initDI();
  runApp(
    AppWidget(
      di.get<PortfolioStore>()..dispatch(InitAction()),
    ),
  );
}

class AppWidget extends StatelessWidget {
  final PortfolioStore _store;

  AppWidget(this._store);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tinkoff investor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(body: PortfolioWidget(_store)),
    );
  }
}
