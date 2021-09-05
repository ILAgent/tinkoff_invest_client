import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tinkoff_invest/redux/state/app_state.dart';
import 'package:tinkoff_invest/redux/state/screen_state.dart';

part 'login_page_state.g.dart';

abstract class LoginPageState implements Built<LoginPageState, LoginPageStateBuilder>, ScreenState {

  LoginPageState._();

  factory LoginPageState([void Function(LoginPageStateBuilder) updates]) =
  _$LoginPageState;

  static Serializer<LoginPageState> get serializer =>
      _$loginPageStateSerializer;

  @override
  T acceptVisitor<T>(ScreenStateVisitor<T> visitor) {
    return visitor.visitLoginPage(this);
  }

  @override
  ScreenState reduce(action, AppState appState) {
    return this;
  }
}
