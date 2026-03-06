// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) =>
    _CustomerModel(
      id: json['id'] as String,
      name: json['name'] as String,
      createdBy: json['created_by'] as String,
      masterCustomerId: json['master_customer_id'] as String?,
      submitStatus: $enumDecode(_$SubmitStatusEnumMap, json['submit_status']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      ktpUrl: json['ktp_url'] as String?,
      kkUrl: json['kk_url'] as String?,
      bankName: json['bank_name'] as String?,
      simulationInfo: json['simulation_info'] as String?,
      reviewInfo: json['review_info'] as String?,
      phoneNumber: json['phone_number'] as String?,
      skUrl: json['sk_url'] as String?,
      akteUrl: json['akte_url'] as String?,
      closedProofUrl: json['closed_proof_url'] as String?,
      closedProofRejectedReason:
          json['closed_proof_rejected_reason'] as String?,
    );

Map<String, dynamic> _$CustomerModelToJson(_CustomerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_by': instance.createdBy,
      'master_customer_id': instance.masterCustomerId,
      'submit_status': _$SubmitStatusEnumMap[instance.submitStatus]!,
      'created_at': instance.createdAt?.toIso8601String(),
      'ktp_url': instance.ktpUrl,
      'kk_url': instance.kkUrl,
      'bank_name': instance.bankName,
      'simulation_info': instance.simulationInfo,
      'review_info': instance.reviewInfo,
      'phone_number': instance.phoneNumber,
      'sk_url': instance.skUrl,
      'akte_url': instance.akteUrl,
      'closed_proof_url': instance.closedProofUrl,
      'closed_proof_rejected_reason': instance.closedProofRejectedReason,
    };

const _$SubmitStatusEnumMap = {
  SubmitStatus.init: 'init',
  SubmitStatus.simulationUploaded: 'simulation_uploaded',
  SubmitStatus.reviewed: 'reviewed',
  SubmitStatus.submitted: 'submitted',
  SubmitStatus.closed: 'closed',
  SubmitStatus.rejected: 'rejected',
  SubmitStatus.closedProofPending: 'closed_proof_pending',
  SubmitStatus.closedProofRejected: 'closed_proof_rejected',
};
