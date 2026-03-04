import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/master_customer_repository_impl.dart';
import 'master_customers_list_state.dart';

part 'master_customers_list_view_model.g.dart';

@riverpod
class MasterCustomersListViewModel extends _$MasterCustomersListViewModel {
  @override
  Future<MasterCustomersListState> build() async {
    final customers =
        await ref.read(masterCustomerRepositoryProvider).getCustomers();
    return MasterCustomersListState(customers: customers);
  }

  void onQueryChanged(String query) {
    state = state.whenData((s) => s.copyWith(query: query));
  }
}
