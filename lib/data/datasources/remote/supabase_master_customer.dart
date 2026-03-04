import 'package:supabase_flutter/supabase_flutter.dart';
import '../../models/master_customer_model.dart';

class SupabaseMasterCustomerDataSource {
  final SupabaseClient _client;

  const SupabaseMasterCustomerDataSource(this._client);

  Future<List<MasterCustomerModel>> getCustomers({
    required int page,
    required int pageSize,
    String? query,
  }) async {
    final from = page * pageSize;
    final to = from + pageSize - 1;

    var builder = _client
        .from('master_customers')
        .select('id, name, phone_number, master_customer_status');

    if (query != null && query.isNotEmpty) {
      builder = builder.ilike('name', '%$query%');
    }

    final data = await builder.order('name').range(from, to);
    return data.map((e) => MasterCustomerModel.fromJson(e)).toList();
  }
}
