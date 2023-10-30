import 'package:riyadebnathdas_56313_s_application4/core/app_export.dart';
import 'package:riyadebnathdas_56313_s_application4/presentation/signin_screen/models/signin_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SigninScreen.
///
/// This class manages the state of the SigninScreen, including the
/// current signinModelObj
class SigninController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SigninModel> signinModelObj = SigninModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
