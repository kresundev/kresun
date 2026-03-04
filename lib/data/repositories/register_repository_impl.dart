import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../datasources/remote/supabase_register_manual.dart';
import '../../domain/repositories/register_repository.dart';

part 'register_repository_impl.g.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final SupabaseRegisterManualDataSource _dataSource;

  const RegisterRepositoryImpl(this._dataSource);

  @override
  Future<void> registerReferral({
    required String email,
    required String password,
    required String name,
    required String regionId,
    required String areaId,
    required String teamLeaderId,
  }) =>
      _dataSource.registerReferral(
        email: email,
        password: password,
        name: name,
        regionId: regionId,
        areaId: areaId,
        teamLeaderId: teamLeaderId,
      );
}

@riverpod
RegisterRepository registerRepository(Ref ref) {
  return RegisterRepositoryImpl(
    SupabaseRegisterManualDataSource(Supabase.instance.client),
  );
}
