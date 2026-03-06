import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../data/models/customer_model.dart';

part 'submit_third_phase_state.freezed.dart';

@freezed
abstract class SubmitThirdPhaseState with _$SubmitThirdPhaseState {
  const SubmitThirdPhaseState._();

  const factory SubmitThirdPhaseState({
    @Default('') String customerName,
    String? customerPhone,
    String? customerBankName,
    bool? approval,
    @Default('') String reviewInfo,
    @Default(false) bool isReviewInfoDirty,
    @Default(SubmitStatus.simulationUploaded) SubmitStatus submitStatus,
    @Default(false) bool isSubmitting,
    String? errorMessage,
  }) = _SubmitThirdPhaseState;

  bool get isFormValid => approval != null && reviewInfo.trim().isNotEmpty;

  String? get reviewInfoError {
    if (!isReviewInfoDirty) return null;
    if (reviewInfo.trim().isEmpty) return 'Catatan review tidak boleh kosong';
    return null;
  }
}
