part of tinkoff_api.api;


enum OperationTypeWithCommission {
    buy, buyCard, sell, brokerCommission, exchangeCommission, serviceCommission, marginCommission, otherCommission, payIn, payOut, tax, taxLucre, taxDividend, taxCoupon, taxBack, repayment, partRepayment, coupon, dividend, securityIn, securityOut
}

class OperationTypeWithCommissionTypeTransformer {
  static Map<String, OperationTypeWithCommission> fromJsonMap = {  
  "Buy":OperationTypeWithCommission.buy, "BuyCard":OperationTypeWithCommission.buyCard, "Sell":OperationTypeWithCommission.sell, "BrokerCommission":OperationTypeWithCommission.brokerCommission, "ExchangeCommission":OperationTypeWithCommission.exchangeCommission, "ServiceCommission":OperationTypeWithCommission.serviceCommission, "MarginCommission":OperationTypeWithCommission.marginCommission, "OtherCommission":OperationTypeWithCommission.otherCommission, "PayIn":OperationTypeWithCommission.payIn, "PayOut":OperationTypeWithCommission.payOut, "Tax":OperationTypeWithCommission.tax, "TaxLucre":OperationTypeWithCommission.taxLucre, "TaxDividend":OperationTypeWithCommission.taxDividend, "TaxCoupon":OperationTypeWithCommission.taxCoupon, "TaxBack":OperationTypeWithCommission.taxBack, "Repayment":OperationTypeWithCommission.repayment, "PartRepayment":OperationTypeWithCommission.partRepayment, "Coupon":OperationTypeWithCommission.coupon, "Dividend":OperationTypeWithCommission.dividend, "SecurityIn":OperationTypeWithCommission.securityIn, "SecurityOut":OperationTypeWithCommission.securityOut
 };
  static Map<OperationTypeWithCommission, String> toJsonMap = {  
  OperationTypeWithCommission.buy:"Buy", OperationTypeWithCommission.buyCard:"BuyCard", OperationTypeWithCommission.sell:"Sell", OperationTypeWithCommission.brokerCommission:"BrokerCommission", OperationTypeWithCommission.exchangeCommission:"ExchangeCommission", OperationTypeWithCommission.serviceCommission:"ServiceCommission", OperationTypeWithCommission.marginCommission:"MarginCommission", OperationTypeWithCommission.otherCommission:"OtherCommission", OperationTypeWithCommission.payIn:"PayIn", OperationTypeWithCommission.payOut:"PayOut", OperationTypeWithCommission.tax:"Tax", OperationTypeWithCommission.taxLucre:"TaxLucre", OperationTypeWithCommission.taxDividend:"TaxDividend", OperationTypeWithCommission.taxCoupon:"TaxCoupon", OperationTypeWithCommission.taxBack:"TaxBack", OperationTypeWithCommission.repayment:"Repayment", OperationTypeWithCommission.partRepayment:"PartRepayment", OperationTypeWithCommission.coupon:"Coupon", OperationTypeWithCommission.dividend:"Dividend", OperationTypeWithCommission.securityIn:"SecurityIn", OperationTypeWithCommission.securityOut:"SecurityOut"
 };

  static OperationTypeWithCommission fromJson(dynamic data) {
    var found = fromJsonMap[data];
    if (found == null) {
      throw('Unknown enum value to decode: $data');
    }
    return found;
  }

  static dynamic toJson(OperationTypeWithCommission data) {
    return toJsonMap[data];
  }

  static List<OperationTypeWithCommission> listFromJson(List<dynamic> json) {
    return json == null ? <OperationTypeWithCommission>[] : json.map((value) => fromJson(value)).toList();
  }

  static OperationTypeWithCommission copyWith(OperationTypeWithCommission instance) {
    return instance;
  }

  static Map<String, OperationTypeWithCommission> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OperationTypeWithCommission>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = fromJson(value));
    }
    return map;
  }
}


