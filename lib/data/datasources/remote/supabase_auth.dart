import 'package:supabase_flutter/supabase_flutter.dart';
import '../../models/user_model.dart';
import '../../../core/errors/exceptions.dart';

class SupabaseAuthDataSource {
  final SupabaseClient _client;

  const SupabaseAuthDataSource(this._client);

  String? getSessionUserId() => _client.auth.currentSession?.user.id;

  Future<UserModel> getCurrentUser(String userId) async {
    final userData = await _client
        .from('users')
        .select('*, region:regions!region_id(*), area:areas!area_id(*)')
        .eq('id', userId)
        .single();

    return UserModel.fromJson(userData);
  }

  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    final response = await _client.auth.signInWithPassword(
      email: email,
      password: password,
    );

    if (response.user == null) {
      throw const ServerException('Login failed: no user returned');
    }

    final userData = await _client
        .from('users')
        .select('*, region:regions!region_id(*), area:areas!area_id(*)')
        .eq('id', response.user!.id)
        .single();

    return UserModel.fromJson(userData);
  }
}
