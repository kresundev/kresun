import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_customer_model.freezed.dart';
part 'master_customer_model.g.dart';

@JsonEnum(valueField: 'value')
enum MasterCustomerStatus {
  available('available'),
  processed('processed'),
  closed('closed'),
  rejected('rejected');

  const MasterCustomerStatus(this.value);
  final String value;
}

@freezed
abstract class MasterCustomerModel with _$MasterCustomerModel {
  const factory MasterCustomerModel({
    required String id,
    required String name,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    @JsonKey(name: 'master_customer_status')
    required MasterCustomerStatus masterCustomerStatus,
    @JsonKey(name: 'ktp_url') String? ktpUrl,
    @JsonKey(name: 'kk_url') String? kkUrl,
    @JsonKey(name: 'bank_name') String? bankName,
    @JsonKey(name: 'simulation_url') String? simulationUrl,
    @JsonKey(name: 'simulation_info') String? simulationInfo,
    @JsonKey(name: 'review_info') String? reviewInfo,
    @JsonKey(name: 'sk_url') String? skUrl,
    @JsonKey(name: 'akte_url') String? akteUrl,
    @JsonKey(name: 'closed_proof_url') String? closedProofUrl,
  }) = _MasterCustomerModel;

  factory MasterCustomerModel.fromJson(Map<String, dynamic> json) =>
      _$MasterCustomerModelFromJson(json);
}
