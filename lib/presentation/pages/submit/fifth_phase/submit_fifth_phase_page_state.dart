import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../data/models/customer_model.dart';

part 'submit_fifth_phase_page_state.freezed.dart';

@freezed
abstract class SubmitFifthPhasePageState with _$SubmitFifthPhasePageState {
  const SubmitFifthPhasePageState._();

  const factory SubmitFifthPhasePageState({
    @Default('') String customerName,
    String? customerPhone,
    String? customerBankName,
    // Bukti Hasil Simulasi
    String? closedProofUrl,
    String? closedProofLocalPath,
    @Default(false) bool isClosedProofPdf,
    @Default(false) bool isClosedProofUploading,
    // Keterangan (opsional)
    @Default('') String closedProofInfo,
    @Default(SubmitStatus.submitted) SubmitStatus submitStatus,
    @Default(false) bool isSubmitting,
    String? errorMessage,
  }) = _SubmitFifthPhasePageState;

  bool get isFormValid => closedProofUrl != null;
}
