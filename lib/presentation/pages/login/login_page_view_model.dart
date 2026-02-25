import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/repositories/auth_repository_impl.dart';
import '../../providers/current_user_provider.dart';
import 'login_page_state.dart';

part 'login_page_view_model.g.dart';

@riverpod
class LoginPageViewModel extends _$LoginPageViewModel {
  @override
  LoginPageState build() => const LoginPageState();

  void onEmailChanged(String email) {
    state = state.copyWith(email: email, isEmailDirty: true, errorMessage: null);
  }

  void onPasswordChanged(String password) {
    state = state.copyWith(password: password, isPasswordDirty: true, errorMessage: null);
  }

  void togglePasswordVisibility() {
    state = state.copyWith(isPasswordVisible: !state.isPasswordVisible);
  }

  Future<void> login() async {
    if (!state.isFormValid) return;

    state = state.copyWith(status: LoginStatus.loading, errorMessage: null);

    try {
      final user = await ref.read(authRepositoryProvider).login(
            email: state.email,
            password: state.password,
          );
      ref.read(currentUserProvider.notifier).setUser(user);
      state = state.copyWith(status: LoginStatus.success, user: user);
    } catch (e) {
      state = state.copyWith(
        status: LoginStatus.failure,
        errorMessage: e.toString(),
      );
    }
  }
}
