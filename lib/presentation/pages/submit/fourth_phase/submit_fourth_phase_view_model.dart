import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/models/customer_model.dart';
import '../../../../data/repositories/customer_repository_impl.dart';
import '../../../providers/current_user_provider.dart';
import 'submit_fourth_phase_state.dart';

part 'submit_fourth_phase_view_model.g.dart';

enum UploadField { kk, akte }

@riverpod
class SubmitFourthPhaseViewModel extends _$SubmitFourthPhaseViewModel {
  final _picker = ImagePicker();
  String _customerId = '';

  @override
  Future<SubmitFourthPhaseState> build(String customerId) async {
    _customerId = customerId;
    final detail =
        await ref.read(customerRepositoryProvider).getCustomerById(customerId);
    return SubmitFourthPhaseState(
      customerName: detail.name,
      customerPhone: detail.phoneNumber,
      customerBankName: detail.bankName,
    );
  }

  Future<void> onPickImage(UploadField field, ImageSource source) async {
    final file = await _picker.pickImage(
      source: source,
      imageQuality: 80,
      maxWidth: 1920,
      maxHeight: 1920,
    );
    if (file == null) return;

    final bucket = field == UploadField.kk ? 'kk' : 'akte';
    final ext = file.path.split('.').last;
    final userId = ref.read(currentUserProvider)?.id ?? '';
    final path = '$userId/${DateTime.now().millisecondsSinceEpoch}.$ext';

    final current = state.valueOrNull;
    if (current == null) return;

    if (field == UploadField.kk) {
      state = AsyncData(
        current.copyWith(kkLocalPath: file.path, isKkPdf: false, isKkUploading: true),
      );
    } else {
      state = AsyncData(
        current.copyWith(akteLocalPath: file.path, isAktePdf: false, isAkteUploading: true),
      );
    }

    try {
      final storagePath = await ref
          .read(customerRepositoryProvider)
          .uploadFile(bucket: bucket, path: path, file: file);
      final updated = state.valueOrNull;
      if (updated == null) return;
      if (field == UploadField.kk) {
        state = AsyncData(updated.copyWith(kkUrl: storagePath, isKkUploading: false));
      } else {
        state = AsyncData(updated.copyWith(akteUrl: storagePath, isAkteUploading: false));
      }
    } catch (e) {
      final updated = state.valueOrNull;
      if (updated == null) return;
      if (field == UploadField.kk) {
        state = AsyncData(
          updated.copyWith(isKkUploading: false, kkLocalPath: null, errorMessage: e.toString()),
        );
      } else {
        state = AsyncData(
          updated.copyWith(isAkteUploading: false, akteLocalPath: null, errorMessage: e.toString()),
        );
      }
    }
  }

  Future<void> onPickPdf(UploadField field) async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      allowMultiple: false,
    );
    if (result == null || result.files.isEmpty) return;
    final picked = result.files.first;
    if (picked.path == null) return;

    final bucket = field == UploadField.kk ? 'kk' : 'akte';
    final userId = ref.read(currentUserProvider)?.id ?? '';
    final path = '$userId/${DateTime.now().millisecondsSinceEpoch}.pdf';

    final current = state.valueOrNull;
    if (current == null) return;

    if (field == UploadField.kk) {
      state = AsyncData(
        current.copyWith(kkLocalPath: picked.path, isKkPdf: true, isKkUploading: true),
      );
    } else {
      state = AsyncData(
        current.copyWith(akteLocalPath: picked.path, isAktePdf: true, isAkteUploading: true),
      );
    }

    try {
      final xFile = XFile(picked.path!);
      final storagePath = await ref
          .read(customerRepositoryProvider)
          .uploadFile(bucket: bucket, path: path, file: xFile);
      final updated = state.valueOrNull;
      if (updated == null) return;
      if (field == UploadField.kk) {
        state = AsyncData(updated.copyWith(kkUrl: storagePath, isKkUploading: false));
      } else {
        state = AsyncData(updated.copyWith(akteUrl: storagePath, isAkteUploading: false));
      }
    } catch (e) {
      final updated = state.valueOrNull;
      if (updated == null) return;
      if (field == UploadField.kk) {
        state = AsyncData(
          updated.copyWith(isKkUploading: false, kkLocalPath: null, errorMessage: e.toString()),
        );
      } else {
        state = AsyncData(
          updated.copyWith(isAkteUploading: false, akteLocalPath: null, errorMessage: e.toString()),
        );
      }
    }
  }

  Future<void> submit() async {
    final current = state.valueOrNull;
    if (current == null || !current.isFormValid) return;

    state = AsyncData(current.copyWith(errorMessage: null, isSubmitting: true));

    try {
      await ref.read(customerRepositoryProvider).submitFourthPhase(
            customerId: _customerId,
            kkUrl: current.kkUrl!,
            akteUrl: current.akteUrl!,
          );
      final updated = state.valueOrNull;
      if (updated == null) return;
      state = AsyncData(updated.copyWith(
        submitStatus: SubmitStatus.submitted,
        isSubmitting: false,
      ));
    } catch (e) {
      final updated = state.valueOrNull;
      if (updated == null) return;
      state = AsyncData(
        updated.copyWith(isSubmitting: false, errorMessage: e.toString()),
      );
    }
  }
}
