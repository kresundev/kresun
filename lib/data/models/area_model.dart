import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'area_model.freezed.dart';
part 'area_model.g.dart';

@freezed
abstract class AreaModel with _$AreaModel {
  const factory AreaModel({
    required String id,
    required String name,
    @JsonKey(name: 'region_id') required String regionId,
  }) = _AreaModel;

  factory AreaModel.fromJson(Map<String, dynamic> json) =>
      _$AreaModelFromJson(json);
}
