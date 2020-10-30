import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:tinkoff_invest/redux/portfolio_state.dart';
import 'package:tinkoff_invest/view/portfolio/portfolio_widget.dart';

import 'di/di.dart';

void main() {
  initDI();
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tinkoff investor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Material(child: PortfolioWidget(di.get<Store<PortfolioState>>())),
    );
  }
}
