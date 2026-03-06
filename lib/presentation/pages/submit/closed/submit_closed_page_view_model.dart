import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/customer_repository_impl.dart';
import 'submit_closed_page_state.dart';

part 'submit_closed_page_view_model.g.dart';

@riverpod
class SubmitClosedPageViewModel extends _$SubmitClosedPageViewModel {
  @override
  Future<SubmitClosedPageState> build(String customerId) async {
    final detail =
        await ref.read(customerRepositoryProvider).getCustomerById(customerId);
    return SubmitClosedPageState(
      customerName: detail.name,
      customerPhone: detail.phoneNumber,
      customerBankName: detail.bankName,
      submitStatus: detail.submitStatus,
      closedProofRejectedReason: detail.closedProofRejectedReason,
    );
  }
}
