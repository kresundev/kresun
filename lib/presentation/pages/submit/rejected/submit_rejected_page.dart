import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import 'submit_rejected_page_view_model.dart';

class SubmitRejectedPage extends ConsumerWidget {
  const SubmitRejectedPage({
    super.key,
    required this.customerId,
    this.fromCustomerList = false,
  });

  final String customerId;
  final bool fromCustomerList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(
      submitRejectedPageViewModelProvider(customerId),
    );

    return PopScope(
      canPop: fromCustomerList,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) context.go('/home');
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F6FA),
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          title: const Text(
            'Pengajuan Ditolak',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          elevation: 0,
        ),
        body: stateAsync.when(
          loading: () =>
              const Center(child: CircularProgressIndicator(color: AppColors.primary)),
          error: (e, _) => Center(
            child: Text(
              'Gagal memuat data: $e',
              style: const TextStyle(color: AppColors.error),
            ),
          ),
          data: (state) => SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ── Rejection Banner ──
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.error.withValues(alpha: 0.08),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: AppColors.error.withValues(alpha: 0.25),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: AppColors.error.withValues(alpha: 0.12),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.cancel_outlined,
                          color: AppColors.error,
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 14),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pengajuan Ditolak',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: AppColors.error,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Pengajuan nasabah ini tidak dapat dilanjutkan',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // ── Customer Info Card ──
                _Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const _SectionLabel('INFO NASABAH'),
                      const SizedBox(height: 16),
                      _InfoRow(
                        icon: Icons.person_outline_rounded,
                        label: 'Nama',
                        value: state.customerName,
                      ),
                      if (state.customerPhone != null) ...[
                        const SizedBox(height: 12),
                        _InfoRow(
                          icon: Icons.phone_outlined,
                          label: 'No. Telepon',
                          value: state.customerPhone!,
                        ),
                      ],
                      if (state.customerBankName != null) ...[
                        const SizedBox(height: 12),
                        _InfoRow(
                          icon: Icons.account_balance_outlined,
                          label: 'Bank',
                          value: state.customerBankName!,
                        ),
                      ],
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // ── Rejection Reason Card ──
                _Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const _SectionLabel('ALASAN PENOLAKAN'),
                      const SizedBox(height: 16),
                      if (state.rejectedReason != null &&
                          state.rejectedReason!.isNotEmpty)
                        Text(
                          state.rejectedReason!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.textPrimary,
                            height: 1.6,
                          ),
                        )
                      else
                        const Text(
                          'Tidak ada catatan',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.textDisabled,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ─── Card ─────────────────────────────────────────────────────────────────────

class _Card extends StatelessWidget {
  const _Card({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color(0x08000000),
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: child,
    );
  }
}

// ─── Section Label ────────────────────────────────────────────────────────────

class _SectionLabel extends StatelessWidget {
  const _SectionLabel(this.label);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w700,
        color: AppColors.textSecondary,
        letterSpacing: 1.1,
      ),
    );
  }
}

// ─── Info Row ─────────────────────────────────────────────────────────────────

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: AppColors.primary.withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, size: 18, color: AppColors.primary),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 11,
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
