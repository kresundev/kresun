abstract class RegisterRepository {
  Future<void> registerReferral({
    required String email,
    required String password,
    required String name,
    required String regionId,
    required String areaId,
    required String teamLeaderId,
  });
}
