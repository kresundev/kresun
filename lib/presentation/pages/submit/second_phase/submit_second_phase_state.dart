import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../data/models/customer_model.dart';

part 'submit_second_phase_state.freezed.dart';

@freezed
abstract class SubmitSecondPhaseState with _$SubmitSecondPhaseState {
  const SubmitSecondPhaseState._();

  const factory SubmitSecondPhaseState({
    @Default('') String bankName,
    @Default(false) bool isBankNameDirty,
    String? simulationUrl,
    String? simulationLocalPath,
    @Default(false) bool isSimulationPdf,
    @Default(false) bool isSimulationUploading,
    @Default('') String simulationInfo,
    @Default(SubmitStatus.init) SubmitStatus submitStatus,
    @Default(false) bool isSubmitting,
    String? errorMessage,
  }) = _SubmitSecondPhaseState;

  bool get isFormValid =>
      bankName.trim().isNotEmpty && simulationUrl != null;

  String? get bankNameError {
    if (!isBankNameDirty) return null;
    if (bankName.trim().isEmpty) return 'Nama bank tidak boleh kosong';
    return null;
  }
}
