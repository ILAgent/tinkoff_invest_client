import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/state/app_state.dart';
import 'package:tinkoff_invest/redux/state/screen_state.dart';

part 'group_settings_state.g.dart';

abstract class GroupSettingsState
    implements
        Built<GroupSettingsState, GroupSettingsStateBuilder>,
        ScreenState {
  String get groupId;

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
                .where((it) => it.groupId == groupId)
                .map((it) => it.figi()),
          ).toBuilder(),
      );
    }
    if (action is ApplyGroupChanges || action is CancelGroupChanges) {
      return rebuild((b) => b.isEditMode = false);
    }
    if (action is ToggleItemInGroupSettings) {
      return rebuild((b) {
        if (action.isSelected) {
          b.selectedItems =
              BuiltList<String>.from([...selectedItems, action.figi])
                  .toBuilder();
        } else {
          b.selectedItems = selectedItems
              .where((it) => it != action.figi)
              .toBuiltList()
              .toBuilder();
        }
      });
    }
    return this;
  }

  @override
  T acceptVisitor<T>(ScreenStateVisitor<T> visitor) {
    return visitor.visitGroupSettings(this);
  }
}
