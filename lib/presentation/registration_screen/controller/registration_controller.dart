import 'package:prisha_the_explorer/core/app_export.dart';
import 'package:prisha_the_explorer/presentation/registration_screen/models/registration_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegistrationScreen.
///
/// This class manages the state of the RegistrationScreen, including the
/// current registrationModelObj
class RegistrationController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  Rx<RegistrationModel> registrationModelObj = RegistrationModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordController1.dispose();
    phoneNumberController.dispose();
    countryController.dispose();
  }
}
