part of petstore_api.api;



class LocalApiClient {

  static final _regList = RegExp(r'^List<(.*)>$');
  static final _regMap = RegExp(r'^Map<String,(.*)>$');

  static dynamic serialize(Object value) {
    try {
      if (value == null) {
        return null;
      } else if (value is List) {
        return value.map((v) => serialize(v)).toList();
      } else if (value is Map) {
        return Map.fromIterables(value.keys,
          value.values.map((v) => serialize(v)));
      } else if (value is String) {
        return value;
      } else if (value is bool) {
        return value;
      } else if (value is num) {
        return value;
      } else if (value is DateTime) {
        return value.toUtc().toIso8601String();
      }
          if (value is BrokerAccountType) {
            return BrokerAccountTypeTypeTransformer.toJson(value);
          }
          if (value is Candle) {
            return value.toJson();
          }
          if (value is CandleResolution) {
            return CandleResolutionTypeTransformer.toJson(value);
          }
          if (value is Candles) {
            return value.toJson();
          }
          if (value is CandlesResponse) {
            return value.toJson();
          }
          if (value is Currencies) {
            return value.toJson();
          }
          if (value is Currency) {
            return CurrencyTypeTransformer.toJson(value);
          }
          if (value is CurrencyPosition) {
            return value.toJson();
          }
          if (value is Empty) {
            return value.toJson();
          }
          if (value is Error) {
            return value.toJson();
          }
          if (value is ErrorPayload) {
            return value.toJson();
          }
          if (value is InstrumentType) {
            return InstrumentTypeTypeTransformer.toJson(value);
          }
          if (value is LimitOrderRequest) {
            return value.toJson();
          }
          if (value is LimitOrderResponse) {
            return value.toJson();
          }
          if (value is MarketInstrument) {
            return value.toJson();
          }
          if (value is MarketInstrumentList) {
            return value.toJson();
          }
          if (value is MarketInstrumentListResponse) {
            return value.toJson();
          }
          if (value is MarketInstrumentResponse) {
            return value.toJson();
          }
          if (value is MarketOrderRequest) {
            return value.toJson();
          }
          if (value is MarketOrderResponse) {
            return value.toJson();
          }
          if (value is MoneyAmount) {
            return value.toJson();
          }
          if (value is Operation) {
            return value.toJson();
          }
          if (value is OperationStatus) {
            return OperationStatusTypeTransformer.toJson(value);
          }
          if (value is OperationTrade) {
            return value.toJson();
          }
          if (value is OperationType) {
            return OperationTypeTypeTransformer.toJson(value);
          }
          if (value is OperationTypeWithCommission) {
            return OperationTypeWithCommissionTypeTransformer.toJson(value);
          }
          if (value is Operations) {
            return value.toJson();
          }
          if (value is OperationsResponse) {
            return value.toJson();
          }
          if (value is Order) {
            return value.toJson();
          }
          if (value is OrderResponse) {
            return value.toJson();
          }
          if (value is OrderStatus) {
            return OrderStatusTypeTransformer.toJson(value);
          }
          if (value is OrderType) {
            return OrderTypeTypeTransformer.toJson(value);
          }
          if (value is Orderbook) {
            return value.toJson();
          }
          if (value is OrderbookResponse) {
            return value.toJson();
          }
          if (value is OrdersResponse) {
            return value.toJson();
          }
          if (value is PlacedLimitOrder) {
            return value.toJson();
          }
          if (value is PlacedMarketOrder) {
            return value.toJson();
          }
          if (value is Portfolio) {
            return value.toJson();
          }
          if (value is PortfolioCurrenciesResponse) {
            return value.toJson();
          }
          if (value is PortfolioPosition) {
            return value.toJson();
          }
          if (value is PortfolioResponse) {
            return value.toJson();
          }
          if (value is SandboxAccount) {
            return value.toJson();
          }
          if (value is SandboxCurrency) {
            return SandboxCurrencyTypeTransformer.toJson(value);
          }
          if (value is SandboxRegisterRequest) {
            return value.toJson();
          }
          if (value is SandboxRegisterResponse) {
            return value.toJson();
          }
          if (value is SandboxSetCurrencyBalanceRequest) {
            return value.toJson();
          }
          if (value is SandboxSetPositionBalanceRequest) {
            return value.toJson();
          }
          if (value is SearchMarketInstrument) {
            return value.toJson();
          }
          if (value is SearchMarketInstrumentResponse) {
            return value.toJson();
          }
          if (value is TradeStatus) {
            return TradeStatusTypeTransformer.toJson(value);
          }
          if (value is UserAccount) {
            return value.toJson();
          }
          if (value is UserAccounts) {
            return value.toJson();
          }
          if (value is UserAccountsResponse) {
            return value.toJson();
          }
        return value.toString();
    } on Exception catch (e, stack) {
      throw ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
  }

  static dynamic deserializeFromString(String json, String targetType) {
    if (json == null) { // HTTP Code 204
      return null;
    }

    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = jsonDecode(json);
    return deserialize(decodedJson, targetType);
  }

  static dynamic deserialize(dynamic value, String targetType) {
    if (value == null) return null; // 204
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'BrokerAccountType':
              return BrokerAccountTypeTypeTransformer.fromJson(value);
        case 'Candle':
          return Candle.fromJson(value);
        case 'CandleResolution':
              return CandleResolutionTypeTransformer.fromJson(value);
        case 'Candles':
          return Candles.fromJson(value);
        case 'CandlesResponse':
          return CandlesResponse.fromJson(value);
        case 'Currencies':
          return Currencies.fromJson(value);
        case 'Currency':
              return CurrencyTypeTransformer.fromJson(value);
        case 'CurrencyPosition':
          return CurrencyPosition.fromJson(value);
        case 'Empty':
          return Empty.fromJson(value);
        case 'Error':
          return Error.fromJson(value);
        case 'ErrorPayload':
          return ErrorPayload.fromJson(value);
        case 'InstrumentType':
              return InstrumentTypeTypeTransformer.fromJson(value);
        case 'LimitOrderRequest':
          return LimitOrderRequest.fromJson(value);
        case 'LimitOrderResponse':
          return LimitOrderResponse.fromJson(value);
        case 'MarketInstrument':
          return MarketInstrument.fromJson(value);
        case 'MarketInstrumentList':
          return MarketInstrumentList.fromJson(value);
        case 'MarketInstrumentListResponse':
          return MarketInstrumentListResponse.fromJson(value);
        case 'MarketInstrumentResponse':
          return MarketInstrumentResponse.fromJson(value);
        case 'MarketOrderRequest':
          return MarketOrderRequest.fromJson(value);
        case 'MarketOrderResponse':
          return MarketOrderResponse.fromJson(value);
        case 'MoneyAmount':
          return MoneyAmount.fromJson(value);
        case 'Operation':
          return Operation.fromJson(value);
        case 'OperationStatus':
              return OperationStatusTypeTransformer.fromJson(value);
        case 'OperationTrade':
          return OperationTrade.fromJson(value);
        case 'OperationType':
              return OperationTypeTypeTransformer.fromJson(value);
        case 'OperationTypeWithCommission':
              return OperationTypeWithCommissionTypeTransformer.fromJson(value);
        case 'Operations':
          return Operations.fromJson(value);
        case 'OperationsResponse':
          return OperationsResponse.fromJson(value);
        case 'Order':
          return Order.fromJson(value);
        case 'OrderResponse':
          return OrderResponse.fromJson(value);
        case 'OrderStatus':
              return OrderStatusTypeTransformer.fromJson(value);
        case 'OrderType':
              return OrderTypeTypeTransformer.fromJson(value);
        case 'Orderbook':
          return Orderbook.fromJson(value);
        case 'OrderbookResponse':
          return OrderbookResponse.fromJson(value);
        case 'OrdersResponse':
          return OrdersResponse.fromJson(value);
        case 'PlacedLimitOrder':
          return PlacedLimitOrder.fromJson(value);
        case 'PlacedMarketOrder':
          return PlacedMarketOrder.fromJson(value);
        case 'Portfolio':
          return Portfolio.fromJson(value);
        case 'PortfolioCurrenciesResponse':
          return PortfolioCurrenciesResponse.fromJson(value);
        case 'PortfolioPosition':
          return PortfolioPosition.fromJson(value);
        case 'PortfolioResponse':
          return PortfolioResponse.fromJson(value);
        case 'SandboxAccount':
          return SandboxAccount.fromJson(value);
        case 'SandboxCurrency':
              return SandboxCurrencyTypeTransformer.fromJson(value);
        case 'SandboxRegisterRequest':
          return SandboxRegisterRequest.fromJson(value);
        case 'SandboxRegisterResponse':
          return SandboxRegisterResponse.fromJson(value);
        case 'SandboxSetCurrencyBalanceRequest':
          return SandboxSetCurrencyBalanceRequest.fromJson(value);
        case 'SandboxSetPositionBalanceRequest':
          return SandboxSetPositionBalanceRequest.fromJson(value);
        case 'SearchMarketInstrument':
          return SearchMarketInstrument.fromJson(value);
        case 'SearchMarketInstrumentResponse':
          return SearchMarketInstrumentResponse.fromJson(value);
        case 'TradeStatus':
              return TradeStatusTypeTransformer.fromJson(value);
        case 'UserAccount':
          return UserAccount.fromJson(value);
        case 'UserAccounts':
          return UserAccounts.fromJson(value);
        case 'UserAccountsResponse':
          return UserAccountsResponse.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _regList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _regMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => deserialize(v, newTargetType)));
            }
          }
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw ApiException(500, 'Could not find a suitable class for deserialization');
  }


   /// Format the given parameter object into string.
  static String parameterToString(dynamic value) {
    if (value == null) {
      return '';
    } else if (value is DateTime) {
      return value.toUtc().toIso8601String();
    } else if (value is String) {
      return value.toString();
    }

    if (value is BrokerAccountType) {
      return BrokerAccountTypeTypeTransformer.toJson(value).toString();
    }
    if (value is CandleResolution) {
      return CandleResolutionTypeTransformer.toJson(value).toString();
    }
    if (value is Currency) {
      return CurrencyTypeTransformer.toJson(value).toString();
    }
    if (value is InstrumentType) {
      return InstrumentTypeTypeTransformer.toJson(value).toString();
    }
    if (value is OperationStatus) {
      return OperationStatusTypeTransformer.toJson(value).toString();
    }
    if (value is OperationType) {
      return OperationTypeTypeTransformer.toJson(value).toString();
    }
    if (value is OperationTypeWithCommission) {
      return OperationTypeWithCommissionTypeTransformer.toJson(value).toString();
    }
    if (value is OrderStatus) {
      return OrderStatusTypeTransformer.toJson(value).toString();
    }
    if (value is OrderType) {
      return OrderTypeTypeTransformer.toJson(value).toString();
    }
    if (value is SandboxCurrency) {
      return SandboxCurrencyTypeTransformer.toJson(value).toString();
    }
    if (value is TradeStatus) {
      return TradeStatusTypeTransformer.toJson(value).toString();
    }

    return jsonEncode(value);
  }
}
