import 'package:image_picker/image_picker.dart';
import '../../data/models/customer_model.dart';

abstract class CustomerRepository {
  Future<List<CustomerModel>> getCustomers({
    required int page,
    required int pageSize,
    String? query,
    String? createdBy,
  });

  Future<String> uploadFile({
    required String bucket,
    required String path,
    required XFile file,
  });

  Future<String> submitFirstPhase(CustomerModel customer);

  Future<void> submitSecondPhase({
    required String customerId,
    required String bankName,
    required String simulationUrl,
    String? simulationInfo,
  });

  Future<({String name, String? phoneNumber, String? bankName, String? reviewInfo})>
      getCustomerById(String id);

  Future<void> submitThirdPhase({
    required String customerId,
    required bool approval,
    required String reviewInfo,
  });

  Future<void> submitFourthPhase({
    required String customerId,
    required String kkUrl,
    required String akteUrl,
  });
}
