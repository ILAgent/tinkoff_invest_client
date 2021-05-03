import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/portfolio/items_group.dart';
import 'package:tinkoff_invest/redux/state/screen_state.dart';

part 'group_settings_state.g.dart';

abstract class GroupSettingsState
    implements
        Built<GroupSettingsState, GroupSettingsStateBuilder>,
        ScreenState {
  ItemsGroup get group;

  bool get isEditMode;

  GroupSettingsState._();

  factory GroupSettingsState(
          [void Function(GroupSettingsStateBuilder) updates]) =
      _$GroupSettingsState;

  static Serializer<GroupSettingsState> get serializer =>
      _$groupSettingsStateSerializer;

  @override
  GroupSettingsState reduce(dynamic action) {
    if (action is EditGroup) {
      return rebuild((b) => b.isEditMode = !isEditMode);
    }
    return this;
  }

  @override
  T acceptVisitor<T>(ScreenStateVisitor<T> visitor) {
    return visitor.visitGroupSettings(this);
  }
}
