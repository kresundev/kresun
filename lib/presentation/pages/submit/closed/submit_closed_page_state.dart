import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../data/models/customer_model.dart';

part 'submit_closed_page_state.freezed.dart';

@freezed
abstract class SubmitClosedPageState with _$SubmitClosedPageState {
  const factory SubmitClosedPageState({
    @Default('') String customerName,
    String? customerPhone,
    String? customerBankName,
    @Default(SubmitStatus.closedProofPending) SubmitStatus submitStatus,
    String? closedProofRejectedReason,
  }) = _SubmitClosedPageState;
}
