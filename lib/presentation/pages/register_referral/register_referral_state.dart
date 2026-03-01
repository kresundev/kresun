import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/area_model.dart';
import '../../../data/models/region_model.dart';

part 'register_referral_state.freezed.dart';

enum RegisterStatus { initial, loading, success, failure }

@freezed
abstract class RegisterReferralState with _$RegisterReferralState {
  const RegisterReferralState._();

  const factory RegisterReferralState({
    @Default('') String name,
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
    RegionModel? selectedRegion,
    AreaModel? selectedArea,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isConfirmPasswordVisible,
    @Default(false) bool isNameDirty,
    @Default(false) bool isEmailDirty,
    @Default(false) bool isPasswordDirty,
    @Default(false) bool isConfirmPasswordDirty,
    @Default(RegisterStatus.initial) RegisterStatus status,
    String? errorMessage,
  }) = _RegisterReferralState;

  bool get isNameValid => name.trim().isNotEmpty;

  bool get isEmailValid =>
      RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);

  bool get isPasswordValid => password.length >= 6;

  bool get isConfirmPasswordValid =>
      confirmPassword.isNotEmpty && confirmPassword == password;

  bool get isFormValid =>
      isNameValid &&
      isEmailValid &&
      isPasswordValid &&
      isConfirmPasswordValid &&
      selectedRegion != null &&
      selectedArea != null;

  bool get isLoading => status == RegisterStatus.loading;

  String? get nameError {
    if (!isNameDirty) return null;
    if (name.trim().isEmpty) return 'Nama tidak boleh kosong';
    return null;
  }

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

  String? get confirmPasswordError {
    if (!isConfirmPasswordDirty) return null;
    if (confirmPassword.isEmpty) return 'Konfirmasi password tidak boleh kosong';
    if (!isConfirmPasswordValid) return 'Password tidak sama';
    return null;
  }
}
