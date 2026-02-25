import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../datasources/remote/supabase_auth.dart';
import '../models/user_model.dart';
import '../../domain/repositories/auth_repository.dart';

part 'auth_repository_impl.g.dart';

class AuthRepositoryImpl implements AuthRepository {
  final SupabaseAuthDataSource _dataSource;

  const AuthRepositoryImpl(this._dataSource);

  @override
  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    return _dataSource.login(email: email, password: password);
  }
}

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(
    SupabaseAuthDataSource(Supabase.instance.client),
  );
}
