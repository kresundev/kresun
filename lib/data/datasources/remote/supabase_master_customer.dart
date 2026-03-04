import 'package:supabase_flutter/supabase_flutter.dart';
import '../../models/master_customer_model.dart';

class SupabaseMasterCustomerDataSource {
  final SupabaseClient _client;

  const SupabaseMasterCustomerDataSource(this._client);

  Future<List<MasterCustomerModel>> getCustomers() async {
    final data = await _client
        .from('master_customers')
        .select('*')
        .order('name');

    return (data as List).map((e) => MasterCustomerModel.fromJson(e)).toList();
  }
}
