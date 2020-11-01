import 'package:redux/redux.dart';
import 'package:rxdart/rxdart.dart';

extension StoreExtension<T> on Store<T> {
  Stream<T> get states => this.onChange.startWith(this.state).distinct();
}
