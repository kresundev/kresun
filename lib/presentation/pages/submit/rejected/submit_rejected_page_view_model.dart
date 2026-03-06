import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/customer_repository_impl.dart';
import 'submit_rejected_page_state.dart';

part 'submit_rejected_page_view_model.g.dart';

@riverpod
class SubmitRejectedPageViewModel extends _$SubmitRejectedPageViewModel {
  @override
  Future<SubmitRejectedPageState> build(String customerId) async {
    final detail =
        await ref.read(customerRepositoryProvider).getCustomerById(customerId);
    return SubmitRejectedPageState(
      customerName: detail.name,
      customerPhone: detail.phoneNumber,
      customerBankName: detail.bankName,
      rejectedReason: detail.reviewInfo,
    );
  }
}
