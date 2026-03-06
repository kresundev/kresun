import 'package:supabase_flutter/supabase_flutter.dart';
import '../../models/customer_model.dart';
import '../../../core/errors/exceptions.dart';

class SupabaseCustomerDataSource {
  final SupabaseClient _client;

  const SupabaseCustomerDataSource(this._client);

  Future<List<CustomerModel>> getCustomers({
    required int page,
    required int pageSize,
    String? query,
    String? createdBy,
  }) async {
    final from = page * pageSize;
    final to = from + pageSize - 1;

    var builder = _client.from('customers').select('*');

    if (query != null && query.isNotEmpty) {
      builder = builder.ilike('name', '%$query%');
    }
    if (createdBy != null && createdBy.isNotEmpty) {
      builder = builder.eq('created_by', createdBy);
    }

    final data = await builder
        .order('created_at', ascending: false)
        .range(from, to);
    return data.map((e) => CustomerModel.fromJson(e)).toList();
  }

  Future<Map<String, dynamic>> getCustomerById(String id) async {
    return await _client
        .from('customers')
        .select('name, phone_number, bank_name, review_info, submit_status, closed_proof_rejected_reason')
        .eq('id', id)
        .single();
  }

  Future<String> submitFirstPhase(CustomerModel customer) async {
    try {
      final result = await _client.rpc(
        'submit_first_phase',
        params: {
          'name': customer.name,
          'ktp_url': customer.ktpUrl,
          'sk_url': customer.skUrl,

          if (customer.phoneNumber != null && customer.phoneNumber!.isNotEmpty)
            'phone_number': customer.phoneNumber,

          if (customer.masterCustomerId != null &&
              customer.masterCustomerId!.isNotEmpty)
            'master_customer_id': customer.masterCustomerId,
        },
      );

      return result as String;
    } catch (e) {
      throw ServerException('Gagal menyimpan data: $e');
    }
  }

  Future<void> submitSecondPhase({
    required String customerId,
    required String bankName,
    required String simulationUrl,
    String? simulationInfo,
  }) async {
    try {
      await _client.rpc(
        'submit_second_phase',
        params: {
          'id': customerId,
          'bank_name': bankName,
          'simulation_url': simulationUrl,
          if (simulationInfo != null) 'simulation_info': simulationInfo,
        },
      );
    } catch (e) {
      throw ServerException('Gagal memperbarui data: $e');
    }
  }

  Future<void> submitThirdPhase({
    required String customerId,
    required bool approval,
    required String reviewInfo,
  }) async {
    try {
      await _client.rpc(
        'submit_third_phase',
        params: {
          'p_id': customerId,
          'p_approval': approval,
          'p_review_info': reviewInfo,
        },
      );
    } catch (e) {
      throw ServerException('Gagal menyimpan review: $e');
    }
  }

  Future<void> submitFifthPhase({
    required String customerId,
    required String closedProofUrl,
    String? closedProofInfo,
  }) async {
    try {
      await _client.rpc(
        'submit_fifth_phase',
        params: {
          'p_id': customerId,
          'p_closed_proof_url': closedProofUrl,
          'p_closed_proof_info': closedProofInfo ?? '',
        },
      );
    } catch (e) {
      throw ServerException('Gagal menyimpan bukti: $e');
    }
  }

  Future<void> submitFourthPhase({
    required String customerId,
    required String kkUrl,
    required String akteUrl,
  }) async {
    try {
      await _client.rpc(
        'submit_fourth_phase',
        params: {'p_id': customerId, 'p_kk_url': kkUrl, 'p_akte_url': akteUrl},
      );
    } catch (e) {
      throw ServerException('Gagal menyimpan dokumen: $e');
    }
  }
}
