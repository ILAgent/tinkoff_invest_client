import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';
import 'package:tinkoff_invest/redux/portfolio_store.dart';
import 'package:tinkoff_invest/view/portfolio/portfolio_widget.dart';

import 'di/di.dart';

void main() {
  initDI();
  di.get<Dispatcher>().dispatch(InitAction());
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
      home: Material(child: PortfolioWidget(di.get<PortfolioStore>())),
    );
  }
}
