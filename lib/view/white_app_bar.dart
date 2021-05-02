import 'package:flutter/material.dart';

class WhiteAppBar extends AppBar {
  WhiteAppBar({
    Key? key,
    Widget? title,
    List<Widget>? actions,
  }) : super(
          key: key,
          title: title,
          actions: actions,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        );
}
