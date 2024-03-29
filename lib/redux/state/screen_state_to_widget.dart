import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/state/group_settings/group_settings_state.dart';
import 'package:tinkoff_invest/redux/state/login/login_page_state.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_state.dart';
import 'package:tinkoff_invest/redux/state/screen_state.dart';
import 'package:tinkoff_invest/redux/state/setting/settings_state.dart';
import 'package:tinkoff_invest/view/group_settings/group_settings_widget.dart';
import 'package:tinkoff_invest/view/login/login_page.dart';
import 'package:tinkoff_invest/view/portfolio/portfolio_widget.dart';
import 'package:tinkoff_invest/view/settings/settings_widget.dart';

import '../app_store.dart';

class ScreenStateToWidget implements ScreenStateVisitor<Widget> {
  final AppStore _store;

  ScreenStateToWidget(this._store);

  @override
  Widget visitPortfolio(PortfolioState state) {
    return PortfolioWidget(_store);
  }

  @override
  Widget visitSettings(SettingsState state) {
    return SettingsWidget(_store, _store.state);
  }

  @override
  Widget visitGroupSettings(GroupSettingsState state) {
    return GroupSettingsWidget(_store, state);
  }

  @override
  Widget visitLoginPage(LoginPageState state) {
    return LoginPage(_store);
  }
}
