import 'package:dio/dio.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../core/errors/exceptions.dart';

class SupabaseRegisterManualDataSource {
  final SupabaseClient _client;
  final Dio _dio;

  static const _functionUrl =
      'https://qcrnlujhxrqingnpiubp.supabase.co/functions/v1/create-user';

  SupabaseRegisterManualDataSource(this._client)
    : _dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        ),
      );

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
    if (token == null) {
      throw const ServerException('Sesi telah berakhir, silakan login kembali');
    }

    try {
      final response = await _dio.post<Map<String, dynamic>>(
        _functionUrl,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
            'apikey': 'sb_publishable_tWfS2YJ1419yiZCN5sOcTw_leSKsNnt',
          },
        ),
        data: {
          'email': email,
          'password': password,
          'name': name,
          'role': 'referral',
          'region_id': regionId,
          'area_id': areaId,
          'team_leader_id': teamLeaderId,
        },
      );

      if (response.statusCode != 200) {
        final error = response.data?['error'] ?? 'Registrasi gagal';
        throw ServerException(error.toString());
      }
    } on DioException catch (e) {
      final error =
          (e.response?.data as Map<String, dynamic>?)?['error'] ??
          e.message ??
          'Registrasi gagal';
      throw ServerException(error.toString());
    }
  }
}
