import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@JsonEnum(valueField: 'value')
enum SubmitStatus {
  init('init'),
  simulationUploaded('simulation_uploaded'),
  reviewed('reviewed'),
  submitted('submitted'),
  closed('closed'),
  rejected('rejected');

  const SubmitStatus(this.value);
  final String value;
}

@freezed
abstract class CustomerModel with _$CustomerModel {
  const factory CustomerModel({
    required String id,
    required String name,
    @JsonKey(name: 'created_by') required String createdBy,
    @JsonKey(name: 'master_customer_id') String? masterCustomerId,
    @JsonKey(name: 'submit_status') required SubmitStatus submitStatus,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'ktp_url') String? ktpUrl,
    @JsonKey(name: 'kk_url') String? kkUrl,
    @JsonKey(name: 'bank_name') String? bankName,
    @JsonKey(name: 'simulation_info') String? simulationInfo,
    @JsonKey(name: 'review_info') String? reviewInfo,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'sk_url') String? skUrl,
    @JsonKey(name: 'akte_url') String? akteUrl,
    @JsonKey(name: 'closed_proof_url') String? closedProofUrl,
  }) = _CustomerModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}
