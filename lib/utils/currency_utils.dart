
import 'package:tinkoff_invest_api/tinkoff_invest_api.dart';

extension CurrencyExtensions on Currency {
  String currencySymbol() {
    switch (this) {
      case Currency.RUB:
        return "₽";
      case Currency.EUR:
        return "€";
      case Currency.USD:
        return "\$";
      default:
        throw ArgumentError(this);
    }
  }
}
