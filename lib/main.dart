import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/app_store.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';
import 'package:tinkoff_invest/redux/state/screen_state.dart';
import 'package:tinkoff_invest/redux/state/screen_state_to_widget.dart';
import 'package:tinkoff_invest/redux/store_extension.dart';

import 'di/di.dart';

Future<void> main() async {
  await initDI();
  // final token = await rootBundle.loadString("assets/token");
  // di.get<Dispatcher>().dispatch(RegisterToken(token));
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
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Colors.black,
              )),
      home: Scaffold(
        body: StreamBuilder<BuiltList<ScreenState>>(
            stream: _store.states.map((it) => it.backStack),
            builder: (context, snapshot) {
              return Navigator(
                pages: (snapshot.data?.toList() ?? List.empty())
                    .map((screen) => screen.acceptVisitor(_statesMapper))
                    .map((widget) => MaterialPage(child: widget))
                    .toList(),
                onPopPage: (route, result) {
                  _store.dispatch(GoBack());
                  return false;
                },
              );
            }),
      ),
    );
  }
}
