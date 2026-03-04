import '../../data/models/master_customer_model.dart';

abstract class MasterCustomerRepository {
  Future<List<MasterCustomerModel>> getCustomers();
}
