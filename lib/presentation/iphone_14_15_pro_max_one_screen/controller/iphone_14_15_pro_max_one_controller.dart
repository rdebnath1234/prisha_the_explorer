import 'package:riyadebnathdas_56313_s_application4/core/app_export.dart';
import 'package:riyadebnathdas_56313_s_application4/presentation/iphone_14_15_pro_max_one_screen/models/iphone_14_15_pro_max_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the Iphone1415ProMaxOneScreen.
///
/// This class manages the state of the Iphone1415ProMaxOneScreen, including the
/// current iphone1415ProMaxOneModelObj
class Iphone1415ProMaxOneController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<Iphone1415ProMaxOneModel> iphone1415ProMaxOneModelObj =
      Iphone1415ProMaxOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
