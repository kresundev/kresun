import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/models/customer_model.dart';
import '../../../../data/models/master_customer_model.dart';
import '../../../../data/repositories/customer_repository_impl.dart';
import '../../../providers/current_user_provider.dart';
import 'submit_first_phase_state.dart';

part 'submit_first_phase_view_model.g.dart';

enum UploadField { ktp, sk }

@riverpod
class SubmitFirstPhaseViewModel extends _$SubmitFirstPhaseViewModel {
  final _picker = ImagePicker();
  MasterCustomerModel? _masterCustomer;

  @override
  SubmitFirstPhaseState build(MasterCustomerModel? masterCustomer) {
    _masterCustomer = masterCustomer;
    if (masterCustomer != null) {
      return SubmitFirstPhaseState(
        name: masterCustomer.name,
        isNameReadOnly: true,
      );
    }
    return const SubmitFirstPhaseState();
  }

  void onNameChanged(String value) {
    state = state.copyWith(name: value, isNameDirty: true, errorMessage: null);
  }

  Future<void> onPickImage(UploadField field, ImageSource source) async {
    final file = await _picker.pickImage(
      source: source,
      imageQuality: 80,
      maxWidth: 1920,
      maxHeight: 1920,
    );
    if (file == null) return;

    final bucket = field == UploadField.ktp ? 'ktp' : 'sk';
    final ext = file.path.split('.').last;
    final userId = ref.read(currentUserProvider)?.id ?? '';
    final path = '$userId/${DateTime.now().millisecondsSinceEpoch}.$ext';

    if (field == UploadField.ktp) {
      state = state.copyWith(ktpLocalPath: file.path, isKtpUploading: true);
    } else {
      state = state.copyWith(skLocalPath: file.path, isSkUploading: true);
    }

    try {
      final storagePath = await ref
          .read(customerRepositoryProvider)
          .uploadFile(bucket: bucket, path: path, file: file);

      if (field == UploadField.ktp) {
        state = state.copyWith(ktpUrl: storagePath, isKtpUploading: false);
      } else {
        state = state.copyWith(skUrl: storagePath, isSkUploading: false);
      }
    } catch (e) {
      if (field == UploadField.ktp) {
        state = state.copyWith(
          isKtpUploading: false,
          ktpLocalPath: null,
          errorMessage: e.toString(),
        );
      } else {
        state = state.copyWith(
          isSkUploading: false,
          skLocalPath: null,
          errorMessage: e.toString(),
        );
      }
    }
  }

  Future<void> submit({required String createdBy}) async {
    if (!state.isFormValid) return;

    state = state.copyWith(errorMessage: null, isSubmitting: true);

    try {
      final customer = CustomerModel(
        id: '',
        name: state.name,
        createdBy: createdBy,
        masterCustomerId: _masterCustomer?.id ?? '',
        submitStatus: SubmitStatus.init,
        phoneNumber: _masterCustomer?.phoneNumber,
        ktpUrl: state.ktpUrl,
        skUrl: state.skUrl,
      );

      await ref.read(customerRepositoryProvider).insertCustomer(customer);
      state = state.copyWith(
        submitStatus: SubmitStatus.submitted,
        isSubmitting: false,
      );
    } catch (e) {
      state = state.copyWith(isSubmitting: false, errorMessage: e.toString());
    }
  }
}
