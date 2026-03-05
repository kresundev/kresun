import 'package:supabase_flutter/supabase_flutter.dart';
import '../../models/customer_model.dart';
import '../../../core/errors/exceptions.dart';

class SupabaseCustomerDataSource {
  final SupabaseClient _client;

  const SupabaseCustomerDataSource(this._client);

  Future<void> insertCustomer(CustomerModel customer) async {
    try {
      await _client.from('customers').insert({
        'name': customer.name,
        'created_by': customer.createdBy,
        'master_customer_id': customer.masterCustomerId,
        'submit_status': customer.submitStatus.value,
        'phone_number': customer.phoneNumber,
        'ktp_url': customer.ktpUrl,
        'kk_url': customer.kkUrl,
        'bank_name': customer.bankName,
        'simulation_info': customer.simulationInfo,
        'review_info': customer.reviewInfo,
        'sk_url': customer.skUrl,
        'akte_url': customer.akteUrl,
        'closed_proof_url': customer.closedProofUrl,
      });
    } catch (e) {
      throw ServerException('Gagal menyimpan data: $e');
    }
  }
}
