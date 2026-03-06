import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/customer_repository_impl.dart';
import '../../../providers/current_user_provider.dart';
import 'customers_list_state.dart';

part 'customers_list_view_model.g.dart';

@riverpod
class CustomersListViewModel extends _$CustomersListViewModel {
  static const _pageSize = 20;
  Timer? _debounce;

  @override
  Future<CustomersListState> build() async {
    ref.onDispose(() => _debounce?.cancel());
    final createdBy = ref.read(currentUserProvider)?.id;
    final customers = await ref
        .read(customerRepositoryProvider)
        .getCustomers(page: 0, pageSize: _pageSize, createdBy: createdBy);
    return CustomersListState(
      customers: customers,
      hasMore: customers.length == _pageSize,
    );
  }

  void onQueryChanged(String query) {
    _debounce?.cancel();
    final current = state.valueOrNull;
    if (current != null) {
      state = AsyncData(current.copyWith(query: query, isSearching: true));
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
      final createdBy = ref.read(currentUserProvider)?.id;
      final customers = await ref
          .read(customerRepositoryProvider)
          .getCustomers(
            page: 0,
            pageSize: _pageSize,
            query: query,
            createdBy: createdBy,
          );
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
      final createdBy = ref.read(currentUserProvider)?.id;
      final more = await ref
          .read(customerRepositoryProvider)
          .getCustomers(
            page: nextPage,
            pageSize: _pageSize,
            query: current.query,
            createdBy: createdBy,
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
