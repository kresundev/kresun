import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../data/models/customer_model.dart';

part 'customers_list_state.freezed.dart';

@freezed
abstract class CustomersListState with _$CustomersListState {
  const factory CustomersListState({
    @Default([]) List<CustomerModel> customers,
    @Default('') String query,
    @Default(0) int page,
    @Default(true) bool hasMore,
    @Default(false) bool isSearching,
    @Default(false) bool isLoadingMore,
  }) = _CustomersListState;
}
