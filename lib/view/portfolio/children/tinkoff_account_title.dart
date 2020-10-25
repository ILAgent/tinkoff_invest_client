import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TinkoffAccountTileWidget extends StatefulWidget {
  @override
  _TinkoffAccountTileWidgetState createState() =>
      _TinkoffAccountTileWidgetState();
}

class _TinkoffAccountTileWidgetState extends State<TinkoffAccountTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Счёт Тинькофф",
        children: [
          TextSpan(
            text: " в рублях",
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
      style: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
