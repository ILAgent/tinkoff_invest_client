import 'package:tinkoff_api/model/currency.dart';

extension CurrencyExtensions on Currency {
  String currencySymbol() {
    switch (this) {
      case Currency.rUB:
        return " ₽";
      case Currency.eUR:
        return " €";
      case Currency.uSD:
        return " \$";
      default:
        throw ArgumentError(this);
    }
  }
}
