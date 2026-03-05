import 'package:image_picker/image_picker.dart';
import '../../data/models/customer_model.dart';

abstract class CustomerRepository {
  Future<String> uploadFile({
    required String bucket,
    required String path,
    required XFile file,
  });

  Future<void> insertCustomer(CustomerModel customer);
}
