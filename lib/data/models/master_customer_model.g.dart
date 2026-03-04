// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MasterCustomerModel _$MasterCustomerModelFromJson(Map<String, dynamic> json) =>
    _MasterCustomerModel(
      id: json['id'] as String,
      name: json['name'] as String,
      phoneNumber: json['phone_number'] as String,
      masterCustomerStatus: $enumDecode(
        _$MasterCustomerStatusEnumMap,
        json['master_customer_status'],
      ),
      ktpUrl: json['ktp_url'] as String?,
      kkUrl: json['kk_url'] as String?,
      bankName: json['bank_name'] as String?,
      simulationUrl: json['simulation_url'] as String?,
      simulationInfo: json['simulation_info'] as String?,
      reviewInfo: json['review_info'] as String?,
      skUrl: json['sk_url'] as String?,
      akteUrl: json['akte_url'] as String?,
      closedProofUrl: json['closed_proof_url'] as String?,
    );

Map<String, dynamic> _$MasterCustomerModelToJson(
  _MasterCustomerModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'phone_number': instance.phoneNumber,
  'master_customer_status':
      _$MasterCustomerStatusEnumMap[instance.masterCustomerStatus]!,
  'ktp_url': instance.ktpUrl,
  'kk_url': instance.kkUrl,
  'bank_name': instance.bankName,
  'simulation_url': instance.simulationUrl,
  'simulation_info': instance.simulationInfo,
  'review_info': instance.reviewInfo,
  'sk_url': instance.skUrl,
  'akte_url': instance.akteUrl,
  'closed_proof_url': instance.closedProofUrl,
};

const _$MasterCustomerStatusEnumMap = {
  MasterCustomerStatus.available: 'available',
  MasterCustomerStatus.processed: 'processed',
  MasterCustomerStatus.closed: 'closed',
  MasterCustomerStatus.rejected: 'rejected',
};
