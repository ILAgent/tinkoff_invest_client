import 'package:hive/hive.dart';
import 'package:tinkoff_invest/redux/state/portfolio_state.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class Storage {
  set state(PortfolioState state);

  PortfolioState get state;

  static Future<Storage> create() async {
    await Hive.initFlutter();
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
    return _openedBox.get("0", defaultValue: PortfolioState.defaultSate());
  }
}
