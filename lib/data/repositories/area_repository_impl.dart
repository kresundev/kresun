import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../datasources/remote/supabase_area.dart';
import '../models/area_model.dart';
import '../../domain/repositories/area_repository.dart';

part 'area_repository_impl.g.dart';

class AreaRepositoryImpl implements AreaRepository {
  final SupabaseAreaDataSource _dataSource;

  const AreaRepositoryImpl(this._dataSource);

  @override
  Future<List<AreaModel>> getAreasByRegion(String regionId) =>
      _dataSource.getAreasByRegion(regionId);
}

@riverpod
Future<List<AreaModel>> areasByRegion(Ref ref, String regionId) {
  return AreaRepositoryImpl(
    SupabaseAreaDataSource(Supabase.instance.client),
  ).getAreasByRegion(regionId);
}
