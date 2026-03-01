import 'package:supabase_flutter/supabase_flutter.dart';
import '../../models/area_model.dart';

class SupabaseAreaDataSource {
  final SupabaseClient _client;

  const SupabaseAreaDataSource(this._client);

  Future<List<AreaModel>> getAreasByRegion(String regionId) async {
    final data = await _client
        .from('areas')
        .select('*')
        .eq('region_id', regionId)
        .order('name');
    return (data as List).map((e) => AreaModel.fromJson(e)).toList();
  }
}
