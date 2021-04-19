import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tinkoff_invest/redux/state/app_state.dart';
import 'package:tinkoff_invest/redux/state/serializers/state_serializers.dart';

abstract class Storage {
  set state(AppState state);

  AppState get state;

  static Future<Storage> create() async {
    await Hive.initFlutter();
    Hive.registerAdapter(_StateAdapter());
    final box = await Hive.openBox<AppState>("portfolio_state");
    return _StorageImpl(box);
  }
}

class _StorageImpl implements Storage {
  final Box<AppState> _openedBox;

  _StorageImpl(this._openedBox);

  @override
  set state(AppState state) {
    _openedBox.put("0", state);
  }

  @override
  AppState get state {
    return _openedBox.get("0", defaultValue: AppState.defaultSate())!;
  }
}

class _StateAdapter extends TypeAdapter<AppState> {
  @override
  final typeId = 0;

  @override
  AppState read(BinaryReader reader) {
    return stateSerializers.deserialize(reader.read()) as AppState;
  }

  @override
  void write(BinaryWriter writer, AppState obj) {
    writer.write(stateSerializers.serialize(obj));
  }
}
