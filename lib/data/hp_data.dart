import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'hp_data.freezed.dart';
part 'hp_data.g.dart';

@freezed
class HpData with _$HpData {
  const factory HpData({@Default(0) int currentHp, @Default(100) int maxHp}) =
      _HpData;

  factory HpData.fromJson(Map<String, dynamic> json) => _$HpDataFromJson(json);
}
