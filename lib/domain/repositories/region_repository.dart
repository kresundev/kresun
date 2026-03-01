import '../../data/models/region_model.dart';

abstract class RegionRepository {
  Future<List<RegionModel>> getRegions();
}
