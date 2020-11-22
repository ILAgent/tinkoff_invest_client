import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

extension StoreExtension<T> on Store<T> {
  Stream<T> get states => onChange.startWith(state).distinct();
}

extension EpicStoreExtension<T> on EpicStore<T> {
  Stream<T> get states => onChange.startWith(state).distinct();
}
