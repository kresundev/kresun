import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../data/models/customer_model.dart';
import 'submit_third_phase_state.dart';
import 'submit_third_phase_view_model.dart';

class SubmitThirdPhasePage extends ConsumerStatefulWidget {
  const SubmitThirdPhasePage({super.key, required this.customerId});

  final String customerId;

  @override
  ConsumerState<SubmitThirdPhasePage> createState() =>
      _SubmitThirdPhasePageState();
}

class _SubmitThirdPhasePageState extends ConsumerState<SubmitThirdPhasePage> {
  late final TextEditingController _reviewInfoController;

  @override
  void initState() {
    super.initState();
    _reviewInfoController = TextEditingController();
  }

  @override
  void dispose() {
    _reviewInfoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = submitThirdPhaseViewModelProvider(widget.customerId);
    final stateAsync = ref.watch(provider);
    final vm = ref.read(provider.notifier);

    ref.listen(provider, (prev, next) {
      final prevStatus = prev?.valueOrNull?.submitStatus;
      final nextStatus = next.valueOrNull?.submitStatus;

      if (nextStatus != null &&
          nextStatus != SubmitStatus.simulationUploaded &&
          prevStatus == SubmitStatus.simulationUploaded) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Review berhasil disimpan!'),
            backgroundColor: Color(0xFF10B981),
          ),
        );
        context.go('/home');
      }

      final prevError = prev?.valueOrNull?.errorMessage;
      final nextError = next.valueOrNull?.errorMessage;
      if (nextError != null && nextError != prevError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(nextError),
            backgroundColor: AppColors.error,
          ),
        );
      }
    });

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) context.go('/home');
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F6FA),
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          title: const Text(
            'Review Pengajuan',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          elevation: 0,
        ),
        body: stateAsync.when(
          loading: () => const Center(
            child: CircularProgressIndicator(color: AppColors.primary),
          ),
          error: (e, _) => Center(
            child: Text(
              'Gagal memuat data: $e',
              style: const TextStyle(color: AppColors.error),
            ),
          ),
          data: (state) => _Body(
            state: state,
            reviewInfoController: _reviewInfoController,
            onApprovalChanged: vm.onApprovalChanged,
            onReviewInfoChanged: vm.onReviewInfoChanged,
            onSubmit: () => _confirm(context, state.approval, vm.submit),
          ),
        ),
      ),
    );
  }

  Future<void> _confirm(
    BuildContext context,
    bool? approval,
    VoidCallback onConfirmed,
  ) async {
    final isApprove = approval == true;
    final color = isApprove ? const Color(0xFF10B981) : AppColors.error;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (_) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.12),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  isApprove
                      ? Icons.check_circle_outline_rounded
                      : Icons.cancel_outlined,
                  color: color,
                  size: 34,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                isApprove ? 'Konfirmasi Persetujuan' : 'Konfirmasi Penolakan',
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                isApprove
                    ? 'Apakah Anda yakin ingin menyetujui pengajuan ini?'
                    : 'Apakah Anda yakin ingin menolak pengajuan ini?',
                style: const TextStyle(
                  fontSize: 13,
                  color: AppColors.textSecondary,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(context, false),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppColors.textSecondary,
                        side: const BorderSide(color: Color(0xFFE8E8F0)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 13),
                      ),
                      child: const Text(
                        'Batal',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context, true),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: color,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 13),
                      ),
                      child: Text(
                        isApprove ? 'Setujui' : 'Tolak',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    if (confirmed == true) onConfirmed();
  }
}

// ─── Body ────────────────────────────────────────────────────────────────────

class _Body extends StatelessWidget {
  const _Body({
    required this.state,
    required this.reviewInfoController,
    required this.onApprovalChanged,
    required this.onReviewInfoChanged,
    required this.onSubmit,
  });

  final SubmitThirdPhaseState state;
  final TextEditingController reviewInfoController;
  final ValueChanged<bool> onApprovalChanged;
  final ValueChanged<String> onReviewInfoChanged;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Tinjau Data Pengajuan',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
              letterSpacing: -0.3,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Periksa data dan berikan keputusan persetujuan',
            style: TextStyle(fontSize: 13, color: AppColors.textSecondary),
          ),
          const SizedBox(height: 24),

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

          // ── Approval Selector ──
          _Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _SectionLabel('KEPUTUSAN'),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: _ApprovalCard(
                        label: 'Setujui',
                        icon: Icons.check_circle_outline_rounded,
                        color: const Color(0xFF10B981),
                        bg: const Color(0xFFD1FAE5),
                        selected: state.approval == true,
                        onTap: () => onApprovalChanged(true),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _ApprovalCard(
                        label: 'Tolak',
                        icon: Icons.cancel_outlined,
                        color: AppColors.error,
                        bg: const Color(0xFFFFEBEE),
                        selected: state.approval == false,
                        onTap: () => onApprovalChanged(false),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // ── Review Info ──
          _Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _SectionLabel('CATATAN REVIEW'),
                const SizedBox(height: 16),
                TextField(
                  controller: reviewInfoController,
                  onChanged: onReviewInfoChanged,
                  maxLines: 4,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.textPrimary,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Tuliskan catatan hasil review...',
                    hintStyle: const TextStyle(
                      color: AppColors.textDisabled,
                      fontSize: 14,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF8F8FF),
                    contentPadding: const EdgeInsets.all(14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xFFE8E8F0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: state.reviewInfoError != null
                            ? AppColors.error
                            : const Color(0xFFE8E8F0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: state.reviewInfoError != null
                            ? AppColors.error
                            : AppColors.primary,
                        width: 1.5,
                      ),
                    ),
                  ),
                ),
                if (state.reviewInfoError != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 6, left: 4),
                    child: Row(
                      children: [
                        const Icon(Icons.info_outline,
                            size: 13, color: AppColors.error),
                        const SizedBox(width: 4),
                        Text(
                          state.reviewInfoError!,
                          style: const TextStyle(
                              fontSize: 12, color: AppColors.error),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),

          const SizedBox(height: 28),

          _SubmitButton(
            approval: state.approval,
            isEnabled: state.isFormValid && !state.isSubmitting,
            isLoading: state.isSubmitting,
            onPressed: onSubmit,
          ),
          const SizedBox(height: 24),
        ],
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

// ─── Approval Card ────────────────────────────────────────────────────────────

class _ApprovalCard extends StatelessWidget {
  const _ApprovalCard({
    required this.label,
    required this.icon,
    required this.color,
    required this.bg,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final Color color;
  final Color bg;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
          color: selected ? color.withValues(alpha: 0.1) : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: selected ? color : const Color(0xFFE8E8F0),
            width: selected ? 1.5 : 1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: selected ? color.withValues(alpha: 0.15) : bg,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color, size: 26),
            ),
            const SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: selected ? color : AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Submit Button ────────────────────────────────────────────────────────────

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({
    required this.approval,
    required this.isEnabled,
    required this.isLoading,
    required this.onPressed,
  });

  final bool? approval;
  final bool isEnabled;
  final bool isLoading;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final isApprove = approval == true;
    final color =
        approval == null ? AppColors.primary : (isApprove ? const Color(0xFF10B981) : AppColors.error);

    return AnimatedOpacity(
      duration: const Duration(milliseconds: 200),
      opacity: isEnabled ? 1.0 : 0.5,
      child: SizedBox(
        width: double.infinity,
        height: 52,
        child: ElevatedButton(
          onPressed: isEnabled && !isLoading ? onPressed : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.white,
            disabledBackgroundColor: color,
            elevation: isEnabled ? 4 : 0,
            shadowColor: color.withValues(alpha: 0.4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          child: isLoading
              ? const SizedBox(
                  width: 22,
                  height: 22,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.5,
                    color: Colors.white,
                  ),
                )
              : Text(
                  approval == false ? 'Tolak Pengajuan' : 'Setujui Pengajuan',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.3,
                  ),
                ),
        ),
      ),
    );
  }
}
