import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tinkoff_invest/redux/state/app_state.dart';
import 'package:tinkoff_invest/redux/state/screen_state.dart';

part 'settings_state.g.dart';

abstract class SettingsState implements Built<SettingsState, SettingsStateBuilder>, ScreenState {

  SettingsState._();

  factory SettingsState([void Function(SettingsStateBuilder) updates]) =
  _$SettingsState;

  static Serializer<SettingsState> get serializer =>
      _$settingsStateSerializer;

  @override
  ScreenState reduce(dynamic action, AppState appState) => this;

  @override
  T acceptVisitor<T>(ScreenStateVisitor<T> visitor) {
    return visitor.visitSettings(this);
  }
}