import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_colors.dart';
import '../../../data/models/area_model.dart';
import '../../../data/models/region_model.dart';
import '../../providers/current_user_provider.dart';
import 'area_picker_page.dart';
import 'region_picker_page.dart';
import 'register_referral_state.dart';
import 'register_referral_view_model.dart';

class RegisterReferralPage extends ConsumerStatefulWidget {
  const RegisterReferralPage({super.key});

  @override
  ConsumerState<RegisterReferralPage> createState() =>
      _RegisterReferralPageState();
}

class _RegisterReferralPageState extends ConsumerState<RegisterReferralPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(registerReferralViewModelProvider);
    final vm = ref.read(registerReferralViewModelProvider.notifier);
    final currentUser = ref.watch(currentUserProvider);

    ref.listen(registerReferralViewModelProvider, (_, next) {
      if (next.status == RegisterStatus.success) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Registrasi berhasil!'),
            backgroundColor: Color(0xFF10B981),
          ),
        );
        context.pop();
      } else if (next.status == RegisterStatus.failure &&
          next.errorMessage != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(next.errorMessage!),
            backgroundColor: AppColors.error,
          ),
        );
      }
    });

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        title: const Text(
          'Register Referral/Sales',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded, size: 20),
          onPressed: () => context.pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Registrasi Sales Baru',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
                letterSpacing: -0.3,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Lengkapi data untuk mendaftarkan sales baru',
              style: TextStyle(fontSize: 13, color: AppColors.textSecondary),
            ),
            const SizedBox(height: 24),

            // ── Form Card ──────────────────────────────────────────────────
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
                  // Nama Lengkap
                  _FormField(
                    label: 'Nama Lengkap',
                    child: _TextField(
                      controller: _nameController,
                      hint: 'Masukkan nama lengkap',
                      onChanged: vm.onNameChanged,
                      errorText: state.nameError,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Regional
                  _FormField(
                    label: 'Regional',
                    child: _SelectField(
                      hint: 'Pilih regional',
                      value: state.selectedRegion?.name,
                      onTap: () async {
                        final result =
                            await Navigator.of(context).push<RegionModel>(
                          MaterialPageRoute(
                            builder: (_) => const RegionPickerPage(),
                          ),
                        );
                        if (result != null) vm.onRegionSelected(result);
                      },
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Wilayah
                  _FormField(
                    label: 'Wilayah',
                    child: _SelectField(
                      hint: 'Pilih wilayah',
                      value: state.selectedArea?.name,
                      enabled: state.selectedRegion != null,
                      onTap: state.selectedRegion == null
                          ? null
                          : () async {
                              final result =
                                  await Navigator.of(context).push<AreaModel>(
                                MaterialPageRoute(
                                  builder: (_) => AreaPickerPage(
                                    regionId: state.selectedRegion!.id,
                                  ),
                                ),
                              );
                              if (result != null) vm.onAreaSelected(result);
                            },
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Nama Team Leader (read-only)
                  _FormField(
                    label: 'Nama Team Leader',
                    child: _TextField(
                      controller: TextEditingController(
                          text: currentUser?.name ?? ''),
                      hint: '',
                      onChanged: (_) {},
                      readOnly: true,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Email
                  _FormField(
                    label: 'Email',
                    child: _TextField(
                      controller: _emailController,
                      hint: 'Masukkan email',
                      onChanged: vm.onEmailChanged,
                      errorText: state.emailError,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Password
                  _FormField(
                    label: 'Password',
                    child: _TextField(
                      controller: _passwordController,
                      hint: 'Masukkan password',
                      onChanged: vm.onPasswordChanged,
                      errorText: state.passwordError,
                      obscureText: !state.isPasswordVisible,
                      textInputAction: TextInputAction.next,
                      suffixIcon: IconButton(
                        icon: Icon(
                          state.isPasswordVisible
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          size: 20,
                          color: AppColors.textSecondary,
                        ),
                        onPressed: vm.togglePasswordVisibility,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Confirm Password
                  _FormField(
                    label: 'Konfirmasi Password',
                    child: _TextField(
                      controller: _confirmPasswordController,
                      hint: 'Ulangi password',
                      onChanged: vm.onConfirmPasswordChanged,
                      errorText: state.confirmPasswordError,
                      obscureText: !state.isConfirmPasswordVisible,
                      textInputAction: TextInputAction.done,
                      suffixIcon: IconButton(
                        icon: Icon(
                          state.isConfirmPasswordVisible
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          size: 20,
                          color: AppColors.textSecondary,
                        ),
                        onPressed: vm.toggleConfirmPasswordVisibility,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Submit button
            _SubmitButton(
              isEnabled: state.isFormValid,
              isLoading: state.isLoading,
              onPressed: () => vm.submit(
                teamLeaderId: currentUser?.id ?? '',
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

// ─── Reusable Form Widgets ─────────────────────────────────────────────────

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

class _TextField extends StatelessWidget {
  const _TextField({
    required this.controller,
    required this.hint,
    required this.onChanged,
    this.errorText,
    this.keyboardType,
    this.textInputAction,
    this.obscureText = false,
    this.readOnly = false,
    this.suffixIcon,
  });

  final TextEditingController controller;
  final String hint;
  final ValueChanged<String> onChanged;
  final String? errorText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final bool readOnly;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    final hasError = errorText != null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller,
          onChanged: onChanged,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          obscureText: obscureText,
          readOnly: readOnly,
          style: TextStyle(
            fontSize: 14,
            color: readOnly ? AppColors.textSecondary : AppColors.textPrimary,
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: AppColors.textDisabled, fontSize: 14),
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: readOnly ? const Color(0xFFF5F6FA) : const Color(0xFFF8F8FF),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
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
                const Icon(Icons.info_outline, size: 13, color: AppColors.error),
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

class _SelectField extends StatelessWidget {
  const _SelectField({
    required this.hint,
    required this.onTap,
    this.value,
    this.enabled = true,
  });

  final String hint;
  final String? value;
  final VoidCallback? onTap;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final hasValue = value != null;

    return GestureDetector(
      onTap: enabled ? onTap : null,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: enabled ? const Color(0xFFF8F8FF) : const Color(0xFFF5F6FA),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFE8E8F0)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                hasValue ? value! : hint,
                style: TextStyle(
                  fontSize: 14,
                  color: hasValue
                      ? AppColors.textPrimary
                      : AppColors.textDisabled,
                ),
              ),
            ),
            Icon(
              Icons.chevron_right_rounded,
              size: 20,
              color: enabled ? AppColors.textSecondary : AppColors.textDisabled,
            ),
          ],
        ),
      ),
    );
  }
}

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
                  'Submit Registrasi',
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
