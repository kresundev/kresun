import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/user_model.dart';

part 'login_page_state.freezed.dart';

enum LoginStatus { initial, loading, success, failure }

@freezed
abstract class LoginPageState with _$LoginPageState {
  const LoginPageState._();

  const factory LoginPageState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isEmailDirty,
    @Default(false) bool isPasswordDirty,
    @Default(LoginStatus.initial) LoginStatus status,
    String? errorMessage,
    UserModel? user,
  }) = _LoginPageState;

  bool get isEmailValid =>
      RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);

  bool get isPasswordValid => password.length >= 6;

  bool get isFormValid => isEmailValid && isPasswordValid;

  bool get isLoading => status == LoginStatus.loading;

  String? get emailError {
    if (!isEmailDirty) return null;
    if (email.isEmpty) return 'Email tidak boleh kosong';
    if (!isEmailValid) return 'Format email tidak valid';
    return null;
  }

  String? get passwordError {
    if (!isPasswordDirty) return null;
    if (password.isEmpty) return 'Password tidak boleh kosong';
    if (!isPasswordValid) return 'Password minimal 6 karakter';
    return null;
  }
}
