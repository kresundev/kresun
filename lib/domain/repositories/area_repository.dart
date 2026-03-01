import '../../data/models/area_model.dart';

abstract class AreaRepository {
  Future<List<AreaModel>> getAreasByRegion(String regionId);
}
