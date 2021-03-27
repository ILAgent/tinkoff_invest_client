import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tinkoff_invest/redux/state/portfolio_state.dart';
import 'package:tinkoff_invest/redux/state/serializers/state_serializers.dart';

abstract class Storage {
  set state(PortfolioState state);

  PortfolioState get state;

  static Future<Storage> create() async {
    await Hive.initFlutter();
    Hive.registerAdapter(_StateAdapter());
    final box = await Hive.openBox<PortfolioState>("portfolio_state");
    return _StorageImpl(box);
  }
}

class _StorageImpl implements Storage {
  final Box<PortfolioState> _openedBox;

  _StorageImpl(this._openedBox);

  @override
  set state(PortfolioState state) {
    _openedBox.put("0", state);
  }

  @override
  PortfolioState get state {
    return _openedBox.get("0", defaultValue: PortfolioState.defaultSate())!;
  }
}

class _StateAdapter extends TypeAdapter<PortfolioState> {
  @override
  final typeId = 0;

  @override
  PortfolioState read(BinaryReader reader) {
    return stateSerializers.deserialize(reader.read()) as PortfolioState;
  }

  @override
  void write(BinaryWriter writer, PortfolioState obj) {
    writer.write(stateSerializers.serialize(obj));
  }
}
