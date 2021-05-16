import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/app_state.dart';
import 'package:tinkoff_invest/redux/state/portfolio/items_group.dart';
import 'package:tinkoff_invest/redux/state/screen_state.dart';

part 'group_settings_state.g.dart';

abstract class GroupSettingsState
    implements
        Built<GroupSettingsState, GroupSettingsStateBuilder>,
        ScreenState {
  ItemsGroup get group;

  bool get isEditMode;

  BuiltList<String> get selectedItems;

  GroupSettingsState._();

  factory GroupSettingsState(
          [void Function(GroupSettingsStateBuilder) updates]) =
      _$GroupSettingsState;

  static Serializer<GroupSettingsState> get serializer =>
      _$groupSettingsStateSerializer;

  @override
  GroupSettingsState reduce(dynamic action, AppState appState) {
    if (action is EditGroup) {
      return rebuild(
        (b) => b
          ..isEditMode = true
          ..selectedItems = BuiltList<String>.from(
            appState.items
                .where((it) => it.groupId == group.id)
                .map((it) => it.figi()),
          ).toBuilder(),
      );
    }
    if (action is ApplyGroupChanges || action is CancelGroupChanges) {
      return rebuild((b) => b.isEditMode = false);
    }
    return this;
  }

  @override
  T acceptVisitor<T>(ScreenStateVisitor<T> visitor) {
    return visitor.visitGroupSettings(this);
  }
}
