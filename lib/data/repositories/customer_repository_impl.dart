import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../datasources/remote/supabase_customer.dart';
import '../datasources/remote/supabase_storage.dart';
import '../models/customer_model.dart';
import '../../domain/repositories/customer_repository.dart';

part 'customer_repository_impl.g.dart';

class CustomerRepositoryImpl implements CustomerRepository {
  final SupabaseStorageDataSource _storage;
  final SupabaseCustomerDataSource _customer;

  const CustomerRepositoryImpl(this._storage, this._customer);

  @override
  Future<String> uploadFile({
    required String bucket,
    required String path,
    required XFile file,
  }) =>
      _storage.uploadFile(bucket: bucket, path: path, file: file);

  @override
  Future<void> insertCustomer(CustomerModel customer) =>
      _customer.insertCustomer(customer);
}

@riverpod
CustomerRepository customerRepository(Ref ref) {
  final client = Supabase.instance.client;
  return CustomerRepositoryImpl(
    SupabaseStorageDataSource(client),
    SupabaseCustomerDataSource(client),
  );
}
