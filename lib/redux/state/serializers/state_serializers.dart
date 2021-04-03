import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:tinkoff_invest/redux/state/items_group.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';
import 'package:tinkoff_invest/redux/state/portfolio_state.dart';
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

part 'state_serializers.g.dart';

@SerializersFor([
  PortfolioState
])
final Serializers stateSerializers =
    (_$stateSerializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();