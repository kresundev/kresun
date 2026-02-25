// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  role: $enumDecode(_$UserRoleEnumMap, json['role']),
  region: json['region'] == null
      ? null
      : RegionModel.fromJson(json['region'] as Map<String, dynamic>),
  area: json['area'] == null
      ? null
      : AreaModel.fromJson(json['area'] as Map<String, dynamic>),
  teamLeaderId: json['teamLeaderId'] as String?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': _$UserRoleEnumMap[instance.role]!,
      'region': instance.region,
      'area': instance.area,
      'teamLeaderId': instance.teamLeaderId,
    };

const _$UserRoleEnumMap = {
  UserRole.bod: 'bod',
  UserRole.admin: 'admin',
  UserRole.teamLeader: 'team_leader',
  UserRole.sales: 'sales',
  UserRole.referral: 'referral',
};
