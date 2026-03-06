import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../data/models/customer_model.dart';
import 'submit_fourth_phase_view_model.dart';

class SubmitFourthPhasePage extends ConsumerWidget {
  const SubmitFourthPhasePage({
    super.key,
    required this.customerId,
    this.fromCustomerList = false,
  });

  final String customerId;
  final bool fromCustomerList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = submitFourthPhaseViewModelProvider(customerId);
    final stateAsync = ref.watch(provider);
    final vm = ref.read(provider.notifier);

    ref.listen(provider, (prev, next) {
      final prevStatus = prev?.valueOrNull?.submitStatus;
      final nextStatus = next.valueOrNull?.submitStatus;

      if (nextStatus == SubmitStatus.submitted &&
          prevStatus != SubmitStatus.submitted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Dokumen berhasil diupload!'),
            backgroundColor: Color(0xFF10B981),
          ),
        );
        context.go('/home');
      }

      final prevError = prev?.valueOrNull?.errorMessage;
      final nextError = next.valueOrNull?.errorMessage;
      if (nextError != null && nextError != prevError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(nextError), backgroundColor: AppColors.error),
        );
      }
    });

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
            'Input Data Lanjutan',
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
          data: (state) => SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Upload Dokumen Tambahan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                    letterSpacing: -0.3,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Upload KK dan Akte Kelahiran calon nasabah',
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.textSecondary,
                  ),
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

                // ── Upload Cards ──
                _Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const _SectionLabel('UPLOAD DOKUMEN'),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: _UploadCard(
                              label: 'Upload KK',
                              localPath: state.kkLocalPath,
                              isPdf: state.isKkPdf,
                              isUploading: state.isKkUploading,
                              isUploaded: state.kkUrl != null,
                              onTap: () =>
                                  _pickFile(context, UploadField.kk, vm),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _UploadCard(
                              label: 'Akte Kelahiran',
                              localPath: state.akteLocalPath,
                              isPdf: state.isAktePdf,
                              isUploading: state.isAkteUploading,
                              isUploaded: state.akteUrl != null,
                              onTap: () =>
                                  _pickFile(context, UploadField.akte, vm),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 28),

                _SubmitButton(
                  isEnabled:
                      state.isFormValid &&
                      !state.isAnyUploading &&
                      !state.isSubmitting,
                  isLoading: state.isSubmitting,
                  onPressed: vm.submit,
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _pickFile(
    BuildContext context,
    UploadField field,
    SubmitFourthPhaseViewModel vm,
  ) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => _FilePickerSheet(
        onPickImage: (source) {
          Navigator.pop(context);
          vm.onPickImage(field, source);
        },
        onPickPdf: () {
          Navigator.pop(context);
          vm.onPickPdf(field);
        },
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

// ─── Upload Card ──────────────────────────────────────────────────────────────

class _UploadCard extends StatelessWidget {
  const _UploadCard({
    required this.label,
    required this.onTap,
    this.localPath,
    this.isPdf = false,
    this.isUploading = false,
    this.isUploaded = false,
  });

  final String label;
  final String? localPath;
  final bool isPdf;
  final bool isUploading;
  final bool isUploaded;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isUploading ? null : onTap,
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: isUploaded
                  ? const Color(0xFF10B981)
                  : const Color(0xFFE8E8F0),
              width: isUploaded ? 1.5 : 1,
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              // Preview or placeholder
              if (localPath != null && !isPdf)
                Positioned.fill(
                  child: Image.file(File(localPath!), fit: BoxFit.cover),
                )
              else if (localPath != null && isPdf)
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.picture_as_pdf_rounded,
                        size: 36,
                        color: const Color(0xFFE53935).withValues(alpha: 0.8),
                      ),
                      const SizedBox(height: 6),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          localPath!.split('/').last,
                          style: const TextStyle(
                            fontSize: 10,
                            color: AppColors.textSecondary,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                )
              else
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.upload_file_rounded,
                        size: 34,
                        color: AppColors.primary.withValues(alpha: 0.6),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        label,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 2),
                      const Text(
                        'Klik untuk upload',
                        style: TextStyle(
                          fontSize: 10,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),

              // Uploading overlay
              if (isUploading)
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withValues(alpha: 0.4),
                    child: const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2.5,
                      ),
                    ),
                  ),
                ),

              // Uploaded checkmark badge
              if (isUploaded && !isUploading)
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      color: Color(0xFF10B981),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check_rounded,
                      color: Colors.white,
                      size: 14,
                    ),
                  ),
                ),

              // Re-upload bar
              if (localPath != null && !isUploading)
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    color: Colors.black.withValues(alpha: 0.45),
                    child: const Text(
                      'Ganti file',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

// ─── File Picker Bottom Sheet ──────────────────────────────────────────────────

class _FilePickerSheet extends StatelessWidget {
  const _FilePickerSheet({required this.onPickImage, required this.onPickPdf});

  final ValueChanged<ImageSource> onPickImage;
  final VoidCallback onPickPdf;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: const Color(0xFFE0E0E0),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Pilih Sumber File',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
                letterSpacing: -0.3,
              ),
            ),
          ),
          const SizedBox(height: 16),
          _PickerOption(
            icon: Icons.camera_alt_rounded,
            iconColor: AppColors.primary,
            iconBg: const Color(0xFFEEEFFF),
            title: 'Kamera',
            onTap: () => onPickImage(ImageSource.camera),
          ),
          const SizedBox(height: 10),
          _PickerOption(
            icon: Icons.photo_library_rounded,
            iconColor: const Color(0xFF10B981),
            iconBg: const Color(0xFFD1FAE5),
            title: 'Galeri',
            onTap: () => onPickImage(ImageSource.gallery),
          ),
          const SizedBox(height: 10),
          _PickerOption(
            icon: Icons.picture_as_pdf_rounded,
            iconColor: const Color(0xFFE53935),
            iconBg: const Color(0xFFFFEBEE),
            title: 'File PDF',
            onTap: onPickPdf,
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom + 20),
        ],
      ),
    );
  }
}

class _PickerOption extends StatelessWidget {
  const _PickerOption({
    required this.icon,
    required this.iconColor,
    required this.iconBg,
    required this.title,
    required this.onTap,
  });

  final IconData icon;
  final Color iconColor;
  final Color iconBg;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: const Color(0xFFF5F6FA),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: iconBg,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: iconColor, size: 20),
            ),
            const SizedBox(width: 14),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimary,
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
    required this.isEnabled,
    required this.isLoading,
    required this.onPressed,
  });

  final bool isEnabled;
  final bool isLoading;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 200),
      opacity: isEnabled ? 1.0 : 0.5,
      child: SizedBox(
        width: double.infinity,
        height: 52,
        child: ElevatedButton(
          onPressed: isEnabled && !isLoading ? onPressed : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            disabledBackgroundColor: AppColors.primary,
            elevation: isEnabled ? 4 : 0,
            shadowColor: AppColors.primary.withValues(alpha: 0.4),
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
              : const Text(
                  'Submit Dokumen',
                  style: TextStyle(
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
