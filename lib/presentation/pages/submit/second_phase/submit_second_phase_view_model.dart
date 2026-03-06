import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/models/customer_model.dart';
import '../../../../data/repositories/customer_repository_impl.dart';
import '../../../providers/current_user_provider.dart';
import 'submit_second_phase_state.dart';

part 'submit_second_phase_view_model.g.dart';

@riverpod
class SubmitSecondPhaseViewModel extends _$SubmitSecondPhaseViewModel {
  final _picker = ImagePicker();
  String _customerId = '';

  @override
  SubmitSecondPhaseState build(String customerId, String customerName) {
    _customerId = customerId;
    return const SubmitSecondPhaseState();
  }

  void onBankNameChanged(String value) {
    state = state.copyWith(
      bankName: value,
      isBankNameDirty: true,
      errorMessage: null,
    );
  }

  void onSimulationInfoChanged(String value) {
    state = state.copyWith(simulationInfo: value);
  }

  Future<void> onPickImage(ImageSource source) async {
    final file = await _picker.pickImage(
      source: source,
      imageQuality: 80,
      maxWidth: 1920,
      maxHeight: 1920,
    );
    if (file == null) return;

    final ext = file.path.split('.').last;
    final userId = ref.read(currentUserProvider)?.id ?? '';
    final path = '$userId/${DateTime.now().millisecondsSinceEpoch}.$ext';

    state = state.copyWith(
      simulationLocalPath: file.path,
      isSimulationPdf: false,
      isSimulationUploading: true,
    );

    try {
      final storagePath = await ref
          .read(customerRepositoryProvider)
          .uploadFile(bucket: 'simulation', path: path, file: file);
      state = state.copyWith(
        simulationUrl: storagePath,
        isSimulationUploading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isSimulationUploading: false,
        simulationLocalPath: null,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> onPickPdf() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      allowMultiple: false,
    );
    if (result == null || result.files.isEmpty) return;
    final picked = result.files.first;
    if (picked.path == null) return;

    final userId = ref.read(currentUserProvider)?.id ?? '';
    final path = '$userId/${DateTime.now().millisecondsSinceEpoch}.pdf';

    state = state.copyWith(
      simulationLocalPath: picked.path,
      isSimulationPdf: true,
      isSimulationUploading: true,
    );

    try {
      final xFile = XFile(picked.path!);
      final storagePath = await ref
          .read(customerRepositoryProvider)
          .uploadFile(bucket: 'simulation', path: path, file: xFile);
      state = state.copyWith(
        simulationUrl: storagePath,
        isSimulationUploading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isSimulationUploading: false,
        simulationLocalPath: null,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> submit() async {
    if (!state.isFormValid) return;

    state = state.copyWith(errorMessage: null, isSubmitting: true);

    try {
      final info = state.simulationInfo.trim().isEmpty
          ? null
          : state.simulationInfo.trim();
      await ref
          .read(customerRepositoryProvider)
          .submitSecondPhase(
            customerId: _customerId,
            bankName: state.bankName.trim(),
            simulationUrl: state.simulationUrl!,
            simulationInfo: info,
          );
      state = state.copyWith(
        submitStatus: SubmitStatus.simulationUploaded,
        isSubmitting: false,
      );
    } catch (e) {
      state = state.copyWith(isSubmitting: false, errorMessage: e.toString());
    }
  }
}
