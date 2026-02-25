import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/models/user_model.dart';

part 'current_user_provider.g.dart';

@Riverpod(keepAlive: true)
class CurrentUser extends _$CurrentUser {
  @override
  UserModel? build() => null;

  void setUser(UserModel user) => state = user;
  void clearUser() => state = null;
}
