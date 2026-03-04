import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../core/errors/exceptions.dart';

class SupabaseRegisterDataSource {
  final SupabaseClient _client;

  const SupabaseRegisterDataSource(this._client);

  Future<void> registerReferral({
    required String email,
    required String password,
    required String name,
    required String regionId,
    required String areaId,
    required String teamLeaderId,
  }) async {
    await _client.auth.refreshSession();
    final token = _client.auth.currentSession?.accessToken;
    if (token == null)
      throw const ServerException('Sesi telah berakhir, silakan login kembali');

    final response = await _client.functions.invoke(
      'create-user',
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      body: {
        'email': email,
        'password': password,
        'name': name,
        'role': 'referral',
        'region_id': regionId,
        'area_id': areaId,
        'team_leader_id': teamLeaderId,
      },
    );

    if (response.status != 200) {
      final error =
          (response.data as Map<String, dynamic>?)?['error'] ??
          'Registrasi gagal';
      throw ServerException(error.toString());
    }
  }
}
