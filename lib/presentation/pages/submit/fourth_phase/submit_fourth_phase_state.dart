import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../data/models/customer_model.dart';

part 'submit_fourth_phase_state.freezed.dart';

@freezed
abstract class SubmitFourthPhaseState with _$SubmitFourthPhaseState {
  const SubmitFourthPhaseState._();

  const factory SubmitFourthPhaseState({
    @Default('') String customerName,
    String? customerPhone,
    String? customerBankName,
    // KK upload
    String? kkUrl,
    String? kkLocalPath,
    @Default(false) bool isKkPdf,
    @Default(false) bool isKkUploading,
    // Akte upload
    String? akteUrl,
    String? akteLocalPath,
    @Default(false) bool isAktePdf,
    @Default(false) bool isAkteUploading,
    @Default(SubmitStatus.reviewed) SubmitStatus submitStatus,
    @Default(false) bool isSubmitting,
    String? errorMessage,
  }) = _SubmitFourthPhaseState;

  bool get isFormValid => kkUrl != null && akteUrl != null;
  bool get isAnyUploading => isKkUploading || isAkteUploading;
}
