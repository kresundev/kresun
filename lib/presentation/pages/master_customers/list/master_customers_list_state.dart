import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../data/models/master_customer_model.dart';

part 'master_customers_list_state.freezed.dart';

@freezed
abstract class MasterCustomersListState with _$MasterCustomersListState {
  const factory MasterCustomersListState({
    @Default([]) List<MasterCustomerModel> customers,
    @Default('') String query,
    @Default(0) int page,
    @Default(true) bool hasMore,
    @Default(false) bool isSearching,
    @Default(false) bool isLoadingMore,
  }) = _MasterCustomersListState;
}
