import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_colors.dart';
import '../../widgets/app_logo.dart';
import 'login_page_state.dart';
import 'login_page_view_model.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loginPageViewModelProvider);
    final vm = ref.read(loginPageViewModelProvider.notifier);

    ref.listen(loginPageViewModelProvider, (_, next) {
      if (next.status == LoginStatus.success) {
        context.go('/home');
      }
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 64),
              const AppLogo(),
              const SizedBox(height: 36),
              const Text(
                'Selamat Datang',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Silakan login untuk melanjutkan',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 44),
              _EmailField(
                controller: _emailController,
                onChanged: vm.onEmailChanged,
                errorText: state.emailError,
              ),
              const SizedBox(height: 16),
              _PasswordField(
                controller: _passwordController,
                isVisible: state.isPasswordVisible,
                onChanged: vm.onPasswordChanged,
                onToggleVisibility: vm.togglePasswordVisibility,
                errorText: state.passwordError,
              ),
              const SizedBox(height: 12),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: state.errorMessage != null
                    ? _ErrorBanner(message: state.errorMessage!)
                    : const SizedBox.shrink(),
              ),
              const SizedBox(height: 28),
              _LoginButton(
                isEnabled: state.isFormValid,
                isLoading: state.isLoading,
                onPressed: vm.login,
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}


class _EmailField extends StatelessWidget {
  const _EmailField({
    required this.controller,
    required this.onChanged,
    required this.errorText,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    final hasError = errorText != null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          onChanged: onChanged,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          style: const TextStyle(fontSize: 15),
          decoration: InputDecoration(
            hintText: 'Masukkan email',
            hintStyle: const TextStyle(color: AppColors.textDisabled),
            prefixIcon: const Icon(Icons.email_outlined, size: 20),
            prefixIconColor: hasError ? AppColors.error : AppColors.textSecondary,
            filled: true,
            fillColor: const Color(0xFFF8F8FF),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: Color(0xFFE8E8F0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: hasError ? AppColors.error : const Color(0xFFE8E8F0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: hasError ? AppColors.error : AppColors.primary,
                width: 1.5,
              ),
            ),
          ),
        ),
        _FieldError(errorText: errorText),
      ],
    );
  }
}

class _PasswordField extends StatelessWidget {
  const _PasswordField({
    required this.controller,
    required this.isVisible,
    required this.onChanged,
    required this.onToggleVisibility,
    required this.errorText,
  });

  final TextEditingController controller;
  final bool isVisible;
  final ValueChanged<String> onChanged;
  final VoidCallback onToggleVisibility;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    final hasError = errorText != null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          onChanged: onChanged,
          obscureText: !isVisible,
          textInputAction: TextInputAction.done,
          style: const TextStyle(fontSize: 15),
          decoration: InputDecoration(
            hintText: 'Masukkan password',
            hintStyle: const TextStyle(color: AppColors.textDisabled),
            prefixIcon: const Icon(Icons.lock_outline, size: 20),
            prefixIconColor: hasError ? AppColors.error : AppColors.textSecondary,
            suffixIcon: IconButton(
              icon: Icon(
                isVisible ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                size: 20,
                color: AppColors.textSecondary,
              ),
              onPressed: onToggleVisibility,
            ),
            filled: true,
            fillColor: const Color(0xFFF8F8FF),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: Color(0xFFE8E8F0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: hasError ? AppColors.error : const Color(0xFFE8E8F0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: hasError ? AppColors.error : AppColors.primary,
                width: 1.5,
              ),
            ),
          ),
        ),
        _FieldError(errorText: errorText),
      ],
    );
  }
}

class _FieldError extends StatelessWidget {
  const _FieldError({required this.errorText});

  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 180),
      curve: Curves.easeInOut,
      child: errorText != null
          ? Padding(
              padding: const EdgeInsets.only(top: 6, left: 4),
              child: Row(
                children: [
                  const Icon(Icons.info_outline, size: 13, color: AppColors.error),
                  const SizedBox(width: 4),
                  Text(
                    errorText!,
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.error,
                    ),
                  ),
                ],
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}

class _ErrorBanner extends StatelessWidget {
  const _ErrorBanner({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.error.withValues(alpha:0.08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.error.withValues(alpha:0.25)),
      ),
      child: Row(
        children: [
          const Icon(Icons.error_outline, color: AppColors.error, size: 18),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              message,
              style: const TextStyle(
                color: AppColors.error,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({
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
            shadowColor: AppColors.primary.withValues(alpha:0.4),
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
                  'Login',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                  ),
                ),
        ),
      ),
    );
  }
}
