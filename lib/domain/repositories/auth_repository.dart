import '../../data/models/user_model.dart';

abstract class AuthRepository {
  String? getSessionUserId();

  Future<UserModel> getCurrentUser(String userId);

  Future<UserModel> login({
    required String email,
    required String password,
  });
}
