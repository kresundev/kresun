import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/models/area_model.dart';
import '../../../data/models/region_model.dart';
import '../../../data/repositories/register_repository_impl.dart';
import 'register_referral_state.dart';

part 'register_referral_view_model.g.dart';

@riverpod
class RegisterReferralViewModel extends _$RegisterReferralViewModel {
  @override
  RegisterReferralState build() => const RegisterReferralState();

  void onNameChanged(String v) =>
      state = state.copyWith(name: v, isNameDirty: true, errorMessage: null);

  void onEmailChanged(String v) =>
      state = state.copyWith(email: v, isEmailDirty: true, errorMessage: null);

  void onPasswordChanged(String v) =>
      state = state.copyWith(password: v, isPasswordDirty: true, errorMessage: null);

  void onConfirmPasswordChanged(String v) => state = state.copyWith(
        confirmPassword: v,
        isConfirmPasswordDirty: true,
        errorMessage: null,
      );

  void togglePasswordVisibility() =>
      state = state.copyWith(isPasswordVisible: !state.isPasswordVisible);

  void toggleConfirmPasswordVisibility() => state = state.copyWith(
        isConfirmPasswordVisible: !state.isConfirmPasswordVisible,
      );

  void onRegionSelected(RegionModel region) => state = state.copyWith(
        selectedRegion: region,
        selectedArea: null,
      );

  void onAreaSelected(AreaModel area) =>
      state = state.copyWith(selectedArea: area);

  Future<void> submit({required String teamLeaderId}) async {
    if (!state.isFormValid) return;

    state = state.copyWith(status: RegisterStatus.loading, errorMessage: null);

    try {
      await ref.read(registerRepositoryProvider).registerReferral(
            email: state.email,
            password: state.password,
            name: state.name,
            regionId: state.selectedRegion!.id,
            areaId: state.selectedArea!.id,
            teamLeaderId: teamLeaderId,
          );
      state = state.copyWith(status: RegisterStatus.success);
    } catch (e) {
      state = state.copyWith(
        status: RegisterStatus.failure,
        errorMessage: e.toString(),
      );
    }
  }
}
