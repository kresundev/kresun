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
  Future<List<CustomerModel>> getCustomers({
    required int page,
    required int pageSize,
    String? query,
    String? createdBy,
  }) => _customer.getCustomers(
    page: page,
    pageSize: pageSize,
    query: query,
    createdBy: createdBy,
  );

  @override
  Future<String> uploadFile({
    required String bucket,
    required String path,
    required XFile file,
  }) => _storage.uploadFile(bucket: bucket, path: path, file: file);

  @override
  Future<String> submitFirstPhase(CustomerModel customer) =>
      _customer.submitFirstPhase(customer);

  @override
  Future<void> submitSecondPhase({
    required String customerId,
    required String bankName,
    required String simulationUrl,
    String? simulationInfo,
  }) => _customer.submitSecondPhase(
    customerId: customerId,
    bankName: bankName,
    simulationUrl: simulationUrl,
    simulationInfo: simulationInfo,
  );
}

@riverpod
CustomerRepository customerRepository(Ref ref) {
  final client = Supabase.instance.client;
  return CustomerRepositoryImpl(
    SupabaseStorageDataSource(client),
    SupabaseCustomerDataSource(client),
  );
}
