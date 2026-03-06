import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../data/models/customer_model.dart';
import 'customers_list_view_model.dart';

class CustomersListPage extends ConsumerStatefulWidget {
  const CustomersListPage({super.key});

  @override
  ConsumerState<CustomersListPage> createState() => _CustomersListPageState();
}

class _CustomersListPageState extends ConsumerState<CustomersListPage> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(customersListViewModelProvider.notifier).loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final stateAsync = ref.watch(customersListViewModelProvider);
    final vm = ref.read(customersListViewModelProvider.notifier);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        title: const Text(
          'Data Pengajuan',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          _SearchBar(onChanged: vm.onQueryChanged),
          stateAsync.whenData((s) => s.isSearching).valueOrNull == true
              ? const LinearProgressIndicator(
                  color: AppColors.primary,
                  backgroundColor: Colors.transparent,
                  minHeight: 2,
                )
              : const SizedBox(height: 2),
          Expanded(
            child: stateAsync.when(
              data: (state) {
                if (state.customers.isEmpty && !state.isSearching) {
                  return const _EmptyState();
                }
                return ListView.separated(
                  controller: _scrollController,
                  padding: const EdgeInsets.all(16),
                  itemCount:
                      state.customers.length + (state.isLoadingMore ? 1 : 0),
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (_, i) {
                    if (i == state.customers.length) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Center(
                          child: CircularProgressIndicator(
                            color: AppColors.primary,
                            strokeWidth: 2,
                          ),
                        ),
                      );
                    }
                    final customer = state.customers[i];
                    final onTap = switch (customer.submitStatus) {
                      SubmitStatus.init => () => context.push(
                        '/submit-second-phase',
                        extra: {
                          'customerId': customer.id,
                          'customerName': customer.name,
                          'fromCustomerList': true,
                        },
                      ),
                      SubmitStatus.simulationUploaded => () => context.push(
                        '/submit-third-phase',
                        extra: {
                          'customerId': customer.id,
                          'fromCustomerList': true,
                        },
                      ),
                      SubmitStatus.reviewed => () => context.push(
                        '/submit-fourth-phase',
                        extra: {
                          'customerId': customer.id,
                          'fromCustomerList': true,
                        },
                      ),
                      SubmitStatus.rejected => () => context.push(
                        '/submit-rejected',
                        extra: {
                          'customerId': customer.id,
                          'fromCustomerList': true,
                        },
                      ),
                      _ => null,
                    };
                    return _CustomerItem(customer: customer, onTap: onTap);
                  },
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(color: AppColors.primary),
              ),
              error: (e, _) => Center(
                child: Text(
                  'Gagal memuat data: $e',
                  style: const TextStyle(color: AppColors.error),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Search Bar ──────────────────────────────────────────────────────────────

class _SearchBar extends StatelessWidget {
  const _SearchBar({required this.onChanged});

  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: TextField(
        onChanged: onChanged,
        style: const TextStyle(fontSize: 14),
        decoration: InputDecoration(
          hintText: 'Cari nama nasabah...',
          hintStyle: const TextStyle(color: AppColors.textDisabled),
          prefixIcon: const Icon(
            Icons.search_rounded,
            size: 20,
            color: AppColors.textSecondary,
          ),
          filled: true,
          fillColor: const Color(0xFFF5F6FA),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

// ─── Customer Item ───────────────────────────────────────────────────────────

class _CustomerItem extends StatelessWidget {
  const _CustomerItem({required this.customer, this.onTap});

  final CustomerModel customer;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(
              color: Color(0x06000000),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    customer.name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  if (customer.phoneNumber != null) ...[
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(
                          Icons.phone_outlined,
                          size: 13,
                          color: AppColors.textSecondary,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          customer.phoneNumber!,
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(width: 12),
            _StatusBadge(status: customer.submitStatus),
          ],
        ),
      ),
    );
  }
}

// ─── Status Badge ────────────────────────────────────────────────────────────

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.status});

  final SubmitStatus status;

  @override
  Widget build(BuildContext context) {
    final (label, color) = switch (status) {
      SubmitStatus.init => ('Fase 1', AppColors.primary),
      SubmitStatus.simulationUploaded => ('Fase 2', const Color(0xFFF59E0B)),
      SubmitStatus.reviewed => ('Fase 3', const Color(0xFF3B82F6)),
      SubmitStatus.submitted => ('Fase 4', const Color(0xFF10B981)),
      SubmitStatus.closed => ('Selesai', AppColors.textSecondary),
      SubmitStatus.rejected => ('Ditolak', AppColors.error),
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: color,
        ),
      ),
    );
  }
}

// ─── Empty State ─────────────────────────────────────────────────────────────

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Belum ada data pengajuan',
        style: TextStyle(color: AppColors.textSecondary, fontSize: 14),
      ),
    );
  }
}
