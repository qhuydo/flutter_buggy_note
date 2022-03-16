import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../helpers/hive_type_id_map.dart';

part 'label.g.dart';
part 'label.freezed.dart';

@freezed
class Label with _$Label {
  @HiveType(typeId: typeIdLabel, adapterName: 'LabelAdapter')
  factory Label({
    @HiveField(0) required int id,
    @HiveField(1) required String title,
  }) = _Label;

  // factory Label.fromJson(Map<String, dynamic> json) => _$LabelFromJson(json);
}
