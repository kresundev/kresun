import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../data/models/customer_model.dart';
import 'submit_second_phase_view_model.dart';

class SubmitSecondPhasePage extends ConsumerStatefulWidget {
  const SubmitSecondPhasePage({
    super.key,
    required this.customerId,
    required this.customerName,
    this.fromCustomerList = false,
  });

  final String customerId;
  final String customerName;
  final bool fromCustomerList;

  @override
  ConsumerState<SubmitSecondPhasePage> createState() =>
      _SubmitSecondPhasePageState();
}

class _SubmitSecondPhasePageState extends ConsumerState<SubmitSecondPhasePage> {
  late final TextEditingController _bankNameController;
  late final TextEditingController _simulationInfoController;

  @override
  void initState() {
    super.initState();
    _bankNameController = TextEditingController();
    _simulationInfoController = TextEditingController();
  }

  @override
  void dispose() {
    _bankNameController.dispose();
    _simulationInfoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = submitSecondPhaseViewModelProvider(
      widget.customerId,
      widget.customerName,
    );
    final state = ref.watch(provider);
    final vm = ref.read(provider.notifier);

    ref.listen(provider, (prev, next) {
      if (next.submitStatus == SubmitStatus.simulationUploaded &&
          prev?.submitStatus != SubmitStatus.simulationUploaded) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Data fase 2 berhasil disimpan!'),
            backgroundColor: Color(0xFF10B981),
          ),
        );
        final router = GoRouter.of(context);
        final customerId = widget.customerId;
        router.go('/home');
        Future.microtask(
          () => router.push(
            '/submit-third-phase',
            extra: {'customerId': customerId, 'fromCustomerList': false},
          ),
        );
      } else if (next.errorMessage != null &&
          next.errorMessage != prev?.errorMessage) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(next.errorMessage!),
            backgroundColor: AppColors.error,
          ),
        );
      }
    });

    return PopScope(
      canPop: widget.fromCustomerList,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) context.go('/home');
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F6FA),
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          title: const Text(
            'Upload Hasil Simulasi',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Informasi Pengajuan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                  letterSpacing: -0.3,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Lengkapi data bank dan upload simulasi pengajuan',
                style: TextStyle(fontSize: 13, color: AppColors.textSecondary),
              ),
              const SizedBox(height: 24),

              Container(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ── Nasabah info (read-only) ──
                    const _SectionLabel('DATA NASABAH'),
                    const SizedBox(height: 12),
                    _ReadOnlyField(
                      label: 'Nama Lengkap',
                      value: widget.customerName,
                    ),
                    const SizedBox(height: 20),

                    // ── Bank info ──
                    const _SectionLabel('INFORMASI BANK'),
                    const SizedBox(height: 12),
                    _FormField(
                      label: 'Nama Bank',
                      child: _TextField(
                        controller: _bankNameController,
                        hintText: 'Masukkan nama bank',
                        onChanged: vm.onBankNameChanged,
                        errorText: state.bankNameError,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // ── Simulation upload ──
                    const _SectionLabel('UPLOAD SIMULASI'),
                    const SizedBox(height: 12),
                    _SimulationUploadCard(
                      localPath: state.simulationLocalPath,
                      isPdf: state.isSimulationPdf,
                      isUploading: state.isSimulationUploading,
                      isUploaded: state.simulationUrl != null,
                      onTap: () => _pickSimulation(context, vm),
                    ),
                    const SizedBox(height: 20),

                    // ── Simulation info (optional) ──
                    const _SectionLabel('CATATAN SIMULASI (OPSIONAL)'),
                    const SizedBox(height: 12),
                    _TextField(
                      controller: _simulationInfoController,
                      hintText: 'Tambahkan catatan jika diperlukan...',
                      onChanged: vm.onSimulationInfoChanged,
                      maxLines: 3,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              _SubmitButton(
                isEnabled:
                    state.isFormValid &&
                    !state.isSimulationUploading &&
                    !state.isSubmitting,
                isLoading: state.isSubmitting,
                onPressed: vm.submit,
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  void _pickSimulation(BuildContext context, SubmitSecondPhaseViewModel vm) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => _SimulationPickerSheet(
        onPickImage: (source) {
          Navigator.pop(context);
          vm.onPickImage(source);
        },
        onPickPdf: () {
          Navigator.pop(context);
          vm.onPickPdf();
        },
      ),
    );
  }
}

// ─── Section Label ───────────────────────────────────────────────────────────

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

// ─── Form Field Wrapper ──────────────────────────────────────────────────────

class _FormField extends StatelessWidget {
  const _FormField({required this.label, required this.child});
  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 8),
        child,
      ],
    );
  }
}

// ─── Read-only Field ─────────────────────────────────────────────────────────

class _ReadOnlyField extends StatelessWidget {
  const _ReadOnlyField({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return _FormField(
      label: label,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: const Color(0xFFF5F6FA),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFE8E8F0)),
        ),
        child: Text(
          value,
          style: const TextStyle(fontSize: 14, color: AppColors.textSecondary),
        ),
      ),
    );
  }
}

// ─── Text Field ──────────────────────────────────────────────────────────────

class _TextField extends StatelessWidget {
  const _TextField({
    required this.controller,
    required this.hintText,
    required this.onChanged,
    this.errorText,
    this.maxLines = 1,
  });

  final TextEditingController controller;
  final String hintText;
  final ValueChanged<String> onChanged;
  final String? errorText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    final hasError = errorText != null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller,
          onChanged: onChanged,
          maxLines: maxLines,
          style: const TextStyle(fontSize: 14, color: AppColors.textPrimary),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: AppColors.textDisabled,
              fontSize: 14,
            ),
            filled: true,
            fillColor: const Color(0xFFF8F8FF),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFFE8E8F0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: hasError ? AppColors.error : const Color(0xFFE8E8F0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: hasError ? AppColors.error : AppColors.primary,
                width: 1.5,
              ),
            ),
          ),
        ),
        if (errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 6, left: 4),
            child: Row(
              children: [
                const Icon(
                  Icons.info_outline,
                  size: 13,
                  color: AppColors.error,
                ),
                const SizedBox(width: 4),
                Text(
                  errorText!,
                  style: const TextStyle(fontSize: 12, color: AppColors.error),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

// ─── Simulation Upload Card ───────────────────────────────────────────────────

class _SimulationUploadCard extends StatelessWidget {
  const _SimulationUploadCard({
    required this.onTap,
    this.localPath,
    this.isPdf = false,
    this.isUploading = false,
    this.isUploaded = false,
  });

  final String? localPath;
  final bool isPdf;
  final bool isUploading;
  final bool isUploaded;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isUploading ? null : onTap,
      child: Container(
        width: double.infinity,
        height: 140,
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
                      size: 48,
                      color: const Color(0xFFE53935).withValues(alpha: 0.8),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      localPath!.split('/').last,
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.textSecondary,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
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
                      size: 40,
                      color: AppColors.primary.withValues(alpha: 0.6),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Upload Simulasi',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      'Foto, galeri, atau file PDF',
                      style: TextStyle(
                        fontSize: 11,
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

            // Uploaded checkmark
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
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  color: Colors.black.withValues(alpha: 0.45),
                  child: const Text(
                    'Ganti file',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// ─── Simulation Picker Sheet ──────────────────────────────────────────────────

class _SimulationPickerSheet extends StatelessWidget {
  const _SimulationPickerSheet({
    required this.onPickImage,
    required this.onPickPdf,
  });

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

// ─── Submit Button ───────────────────────────────────────────────────────────

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
                  'Submit Data',
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
