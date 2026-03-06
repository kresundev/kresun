import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/models/customer_model.dart';
import '../../../../data/repositories/customer_repository_impl.dart';
import 'submit_third_phase_state.dart';

part 'submit_third_phase_view_model.g.dart';

@riverpod
class SubmitThirdPhaseViewModel extends _$SubmitThirdPhaseViewModel {
  String _customerId = '';

  @override
  Future<SubmitThirdPhaseState> build(String customerId) async {
    _customerId = customerId;
    final detail =
        await ref.read(customerRepositoryProvider).getCustomerById(customerId);
    return SubmitThirdPhaseState(
      customerName: detail.name,
      customerPhone: detail.phoneNumber,
      customerBankName: detail.bankName,
    );
  }

  void onApprovalChanged(bool value) {
    final current = state.valueOrNull;
    if (current == null) return;
    state = AsyncData(current.copyWith(approval: value, errorMessage: null));
  }

  void onReviewInfoChanged(String value) {
    final current = state.valueOrNull;
    if (current == null) return;
    state = AsyncData(
      current.copyWith(reviewInfo: value, isReviewInfoDirty: true),
    );
  }

  Future<void> submit() async {
    final current = state.valueOrNull;
    if (current == null || !current.isFormValid) return;

    state = AsyncData(current.copyWith(errorMessage: null, isSubmitting: true));

    try {
      await ref.read(customerRepositoryProvider).submitThirdPhase(
            customerId: _customerId,
            approval: current.approval!,
            reviewInfo: current.reviewInfo.trim(),
          );
      final nextStatus =
          current.approval! ? SubmitStatus.reviewed : SubmitStatus.rejected;
      state = AsyncData(current.copyWith(
        submitStatus: nextStatus,
        isSubmitting: false,
      ));
    } catch (e) {
      state = AsyncData(
        current.copyWith(isSubmitting: false, errorMessage: e.toString()),
      );
    }
  }
}
