import 'package:tinkoff_invest/redux/state/app_state.dart';
import 'package:tinkoff_invest/redux/state/group_settings/group_settings_state.dart';
import 'package:tinkoff_invest/redux/state/login/login_page_state.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_state.dart';
import 'package:tinkoff_invest/redux/state/setting/settings_state.dart';

abstract class ScreenState {
  ScreenState reduce(dynamic action, AppState appState);

  T acceptVisitor<T>(ScreenStateVisitor<T> visitor);
}

abstract class ScreenStateVisitor<T> {
  T visitPortfolio(PortfolioState state);

  T visitSettings(SettingsState state);

  T visitGroupSettings(GroupSettingsState state);

  T visitLoginPage(LoginPageState state);
}
