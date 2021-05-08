import 'package:flutter/material.dart';
import 'package:implicitly_animated_reorderable_list/transitions.dart';

class ListItemTransition extends SizeFadeTransition {
  ListItemTransition(Animation<double> animation, {required Widget child})
      : super(
          sizeFraction: 0.7,
          curve: Curves.easeInOut,
          animation: animation,
          child: child,
        );
}
