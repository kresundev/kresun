import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/models/customer_model.dart';
import '../../../../data/repositories/customer_repository_impl.dart';
import '../../../providers/current_user_provider.dart';
import 'submit_fifth_phase_page_state.dart';

part 'submit_fifth_phase_page_view_model.g.dart';

@riverpod
class SubmitFifthPhasePageViewModel extends _$SubmitFifthPhasePageViewModel {
  final _picker = ImagePicker();
  String _customerId = '';

  @override
  Future<SubmitFifthPhasePageState> build(String customerId) async {
    _customerId = customerId;
    final detail =
        await ref.read(customerRepositoryProvider).getCustomerById(customerId);
    return SubmitFifthPhasePageState(
      customerName: detail.name,
      customerPhone: detail.phoneNumber,
      customerBankName: detail.bankName,
    );
  }

  void onClosedProofInfoChanged(String value) {
    final current = state.valueOrNull;
    if (current == null) return;
    state = AsyncData(current.copyWith(closedProofInfo: value));
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

    final current = state.valueOrNull;
    if (current == null) return;
    state = AsyncData(
      current.copyWith(
        closedProofLocalPath: file.path,
        isClosedProofPdf: false,
        isClosedProofUploading: true,
      ),
    );

    try {
      final storagePath = await ref
          .read(customerRepositoryProvider)
          .uploadFile(bucket: 'closed_proof', path: path, file: file);
      final updated = state.valueOrNull;
      if (updated == null) return;
      state = AsyncData(
        updated.copyWith(closedProofUrl: storagePath, isClosedProofUploading: false),
      );
    } catch (e) {
      final updated = state.valueOrNull;
      if (updated == null) return;
      state = AsyncData(
        updated.copyWith(
          isClosedProofUploading: false,
          closedProofLocalPath: null,
          errorMessage: e.toString(),
        ),
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

    final current = state.valueOrNull;
    if (current == null) return;
    state = AsyncData(
      current.copyWith(
        closedProofLocalPath: picked.path,
        isClosedProofPdf: true,
        isClosedProofUploading: true,
      ),
    );

    try {
      final xFile = XFile(picked.path!);
      final storagePath = await ref
          .read(customerRepositoryProvider)
          .uploadFile(bucket: 'closed_proof', path: path, file: xFile);
      final updated = state.valueOrNull;
      if (updated == null) return;
      state = AsyncData(
        updated.copyWith(closedProofUrl: storagePath, isClosedProofUploading: false),
      );
    } catch (e) {
      final updated = state.valueOrNull;
      if (updated == null) return;
      state = AsyncData(
        updated.copyWith(
          isClosedProofUploading: false,
          closedProofLocalPath: null,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> submit() async {
    final current = state.valueOrNull;
    if (current == null || !current.isFormValid) return;

    state = AsyncData(current.copyWith(errorMessage: null, isSubmitting: true));

    try {
      final info =
          current.closedProofInfo.trim().isEmpty ? null : current.closedProofInfo.trim();
      await ref.read(customerRepositoryProvider).submitFifthPhase(
            customerId: _customerId,
            closedProofUrl: current.closedProofUrl!,
            closedProofInfo: info,
          );
      final updated = state.valueOrNull;
      if (updated == null) return;
      state = AsyncData(
        updated.copyWith(submitStatus: SubmitStatus.closedProofPending, isSubmitting: false),
      );
    } catch (e) {
      final updated = state.valueOrNull;
      if (updated == null) return;
      state = AsyncData(
        updated.copyWith(isSubmitting: false, errorMessage: e.toString()),
      );
    }
  }
}
