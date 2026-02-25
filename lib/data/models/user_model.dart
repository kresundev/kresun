import 'package:freezed_annotation/freezed_annotation.dart';
import 'area_model.dart';
import 'region_model.dart';
import 'user_role.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String email,
    required UserRole role,
    RegionModel? region,
    AreaModel? area,
    String? teamLeaderId,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
