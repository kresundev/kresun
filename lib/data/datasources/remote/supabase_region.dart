import 'package:supabase_flutter/supabase_flutter.dart';
import '../../models/region_model.dart';

class SupabaseRegionDataSource {
  final SupabaseClient _client;

  const SupabaseRegionDataSource(this._client);

  Future<List<RegionModel>> getRegions() async {
    final data = await _client.from('regions').select('*').order('name');
    return (data as List).map((e) => RegionModel.fromJson(e)).toList();
  }
}
