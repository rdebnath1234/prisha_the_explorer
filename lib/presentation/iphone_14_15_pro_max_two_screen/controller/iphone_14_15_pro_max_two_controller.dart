import 'package:riyadebnathdas_56313_s_application4/core/app_export.dart';
import 'package:riyadebnathdas_56313_s_application4/presentation/iphone_14_15_pro_max_two_screen/models/iphone_14_15_pro_max_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the Iphone1415ProMaxTwoScreen.
///
/// This class manages the state of the Iphone1415ProMaxTwoScreen, including the
/// current iphone1415ProMaxTwoModelObj
class Iphone1415ProMaxTwoController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  Rx<Iphone1415ProMaxTwoModel> iphone1415ProMaxTwoModelObj =
      Iphone1415ProMaxTwoModel().obs;

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
