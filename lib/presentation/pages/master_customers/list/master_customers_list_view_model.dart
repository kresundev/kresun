import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/master_customer_repository_impl.dart';
import 'master_customers_list_state.dart';

part 'master_customers_list_view_model.g.dart';

@riverpod
class MasterCustomersListViewModel extends _$MasterCustomersListViewModel {
  static const _pageSize = 20;
  Timer? _debounce;

  @override
  Future<MasterCustomersListState> build() async {
    ref.onDispose(() => _debounce?.cancel());
    final customers = await ref
        .read(masterCustomerRepositoryProvider)
        .getCustomers(page: 0, pageSize: _pageSize);
    return MasterCustomersListState(
      customers: customers,
      hasMore: customers.length == _pageSize,
    );
  }

  void onQueryChanged(String query) {
    _debounce?.cancel();
    final current = state.valueOrNull;
    if (current != null) {
      state = AsyncData(
        current.copyWith(query: query, isSearching: true),
      );
    }
    _debounce = Timer(
      const Duration(milliseconds: 400),
      () => _search(query),
    );
  }

  Future<void> _search(String query) async {
    final current = state.valueOrNull;
    if (current == null) return;
    try {
      final customers = await ref
          .read(masterCustomerRepositoryProvider)
          .getCustomers(page: 0, pageSize: _pageSize, query: query);
      state = AsyncData(current.copyWith(
        customers: customers,
        page: 0,
        hasMore: customers.length == _pageSize,
        isSearching: false,
      ));
    } catch (_) {
      state = AsyncData(current.copyWith(isSearching: false));
    }
  }

  Future<void> loadMore() async {
    final current = state.valueOrNull;
    if (current == null || current.isLoadingMore || !current.hasMore) return;

    state = AsyncData(current.copyWith(isLoadingMore: true));
    try {
      final nextPage = current.page + 1;
      final more = await ref
          .read(masterCustomerRepositoryProvider)
          .getCustomers(
            page: nextPage,
            pageSize: _pageSize,
            query: current.query,
          );
      state = AsyncData(current.copyWith(
        customers: [...current.customers, ...more],
        page: nextPage,
        hasMore: more.length == _pageSize,
        isLoadingMore: false,
      ));
    } catch (_) {
      state = AsyncData(current.copyWith(isLoadingMore: false));
    }
  }
}
