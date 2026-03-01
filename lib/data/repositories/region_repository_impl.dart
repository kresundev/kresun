import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../datasources/remote/supabase_region.dart';
import '../models/region_model.dart';
import '../../domain/repositories/region_repository.dart';

part 'region_repository_impl.g.dart';

class RegionRepositoryImpl implements RegionRepository {
  final SupabaseRegionDataSource _dataSource;

  const RegionRepositoryImpl(this._dataSource);

  @override
  Future<List<RegionModel>> getRegions() => _dataSource.getRegions();
}

@riverpod
Future<List<RegionModel>> regions(Ref ref) {
  return RegionRepositoryImpl(
    SupabaseRegionDataSource(Supabase.instance.client),
  ).getRegions();
}
