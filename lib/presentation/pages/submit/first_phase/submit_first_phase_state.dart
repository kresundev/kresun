import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../data/models/customer_model.dart';

part 'submit_first_phase_state.freezed.dart';

@freezed
abstract class SubmitFirstPhaseState with _$SubmitFirstPhaseState {
  const SubmitFirstPhaseState._();

  const factory SubmitFirstPhaseState({
    @Default('') String name,
    @Default(false) bool isNameDirty,
    @Default(false) bool isNameReadOnly,
    String? ktpUrl,
    String? ktpLocalPath,
    @Default(false) bool isKtpUploading,
    String? skUrl,
    String? skLocalPath,
    @Default(false) bool isSkUploading,
    @Default(SubmitStatus.init) SubmitStatus submitStatus,
    @Default(false) bool isSubmitting,
    String? submittedCustomerId,
    String? errorMessage,
  }) = _SubmitFirstPhaseState;

  bool get isFormValid =>
      name.trim().isNotEmpty && ktpUrl != null && skUrl != null;

  bool get isAnyUploading => isKtpUploading || isSkUploading;

  String? get nameError {
    if (!isNameDirty) return null;
    if (name.trim().isEmpty) return 'Nama tidak boleh kosong';
    return null;
  }
}
