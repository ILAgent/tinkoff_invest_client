import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_state.dart';
import 'package:tinkoff_invest/redux/state/screen_state.dart';
import 'package:tinkoff_invest/redux/state/setting/settings_state.dart';
import 'package:tinkoff_invest/view/portfolio/portfolio_widget.dart';
import 'package:tinkoff_invest/view/settings/settings_widget.dart';

import '../app_store.dart';

class ScreenStateToWidget implements ScreenStateVisitor<Widget> {
  final AppStore _store;

  ScreenStateToWidget(this._store);

  @override
  Widget visitPortfolio(PortfolioState state) {
    return PortfolioWidget(_store, state);
  }

  @override
  Widget visitSettings(SettingsState state) {
    return SettingsWidget(_store);
  }
}
