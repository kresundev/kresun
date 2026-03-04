import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../datasources/remote/supabase_master_customer.dart';
import '../../domain/repositories/master_customer_repository.dart';
import '../models/master_customer_model.dart';

part 'master_customer_repository_impl.g.dart';

class MasterCustomerRepositoryImpl implements MasterCustomerRepository {
  final SupabaseMasterCustomerDataSource _dataSource;

  const MasterCustomerRepositoryImpl(this._dataSource);

  @override
  Future<List<MasterCustomerModel>> getCustomers() =>
      _dataSource.getCustomers();
}

@riverpod
MasterCustomerRepository masterCustomerRepository(Ref ref) {
  return MasterCustomerRepositoryImpl(
    SupabaseMasterCustomerDataSource(Supabase.instance.client),
  );
}
