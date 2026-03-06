import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_rejected_page_state.freezed.dart';

@freezed
abstract class SubmitRejectedPageState with _$SubmitRejectedPageState {
  const factory SubmitRejectedPageState({
    @Default('') String customerName,
    String? customerPhone,
    String? customerBankName,
    String? rejectedReason,
  }) = _SubmitRejectedPageState;
}
