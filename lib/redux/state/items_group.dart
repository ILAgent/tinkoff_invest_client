import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_group.freezed.dart';

@freezed
abstract class ItemsGroup with _$ItemsGroup {
  factory ItemsGroup({
    @required String title,
  }) = _ItemsGroup;
}
