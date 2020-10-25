import 'package:flutter/widgets.dart';

class TinkoffAccountAmountWidget extends StatefulWidget {
  @override
  _TinkoffAccountAmountWidgetState createState() =>
      _TinkoffAccountAmountWidgetState();
}

class _TinkoffAccountAmountWidgetState
    extends State<TinkoffAccountAmountWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "123 456,14 Rub",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600
      ),
    );
  }
}
