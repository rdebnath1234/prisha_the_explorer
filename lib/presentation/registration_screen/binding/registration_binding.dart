import '../controller/registration_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistrationScreen.
///
/// This class ensures that the RegistrationController is created when the
/// RegistrationScreen is first loaded.
class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationController());
  }
}
