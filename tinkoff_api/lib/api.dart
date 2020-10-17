library petstore_api.api;

/// OpenAPI API client

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:openapi_dart_common/openapi.dart';
import 'package:collection/collection.dart';


part 'api_client.dart';

part 'api/market_api.dart';
part 'api/operations_api.dart';
part 'api/orders_api.dart';
part 'api/portfolio_api.dart';
part 'api/sandbox_api.dart';
part 'api/user_api.dart';

part 'model/broker_account_type.dart';
part 'model/candle.dart';
part 'model/candle_resolution.dart';
part 'model/candles.dart';
part 'model/candles_response.dart';
part 'model/currencies.dart';
part 'model/currency.dart';
part 'model/currency_position.dart';
part 'model/empty.dart';
part 'model/error.dart';
part 'model/error_payload.dart';
part 'model/instrument_type.dart';
part 'model/limit_order_request.dart';
part 'model/limit_order_response.dart';
part 'model/market_instrument.dart';
part 'model/market_instrument_list.dart';
part 'model/market_instrument_list_response.dart';
part 'model/market_instrument_response.dart';
part 'model/market_order_request.dart';
part 'model/market_order_response.dart';
part 'model/money_amount.dart';
part 'model/operation.dart';
part 'model/operation_status.dart';
part 'model/operation_trade.dart';
part 'model/operation_type.dart';
part 'model/operation_type_with_commission.dart';
part 'model/operations.dart';
part 'model/operations_response.dart';
part 'model/order.dart';
part 'model/order_response.dart';
part 'model/order_status.dart';
part 'model/order_type.dart';
part 'model/orderbook.dart';
part 'model/orderbook_response.dart';
part 'model/orders_response.dart';
part 'model/placed_limit_order.dart';
part 'model/placed_market_order.dart';
part 'model/portfolio.dart';
part 'model/portfolio_currencies_response.dart';
part 'model/portfolio_position.dart';
part 'model/portfolio_response.dart';
part 'model/sandbox_account.dart';
part 'model/sandbox_currency.dart';
part 'model/sandbox_register_request.dart';
part 'model/sandbox_register_response.dart';
part 'model/sandbox_set_currency_balance_request.dart';
part 'model/sandbox_set_position_balance_request.dart';
part 'model/search_market_instrument.dart';
part 'model/search_market_instrument_response.dart';
part 'model/trade_status.dart';
part 'model/user_account.dart';
part 'model/user_accounts.dart';
part 'model/user_accounts_response.dart';


