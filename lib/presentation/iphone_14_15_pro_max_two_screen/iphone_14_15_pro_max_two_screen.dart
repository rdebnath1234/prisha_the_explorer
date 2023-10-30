import 'controller/iphone_14_15_pro_max_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:riyadebnathdas_56313_s_application4/core/app_export.dart';
import 'package:riyadebnathdas_56313_s_application4/core/utils/validation_functions.dart';
import 'package:riyadebnathdas_56313_s_application4/widgets/custom_elevated_button.dart';
import 'package:riyadebnathdas_56313_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwoScreen
    extends GetWidget<Iphone1415ProMaxTwoController> {
  Iphone1415ProMaxTwoScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 29.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 1.v),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 42.h, vertical: 122.v),
                              decoration: AppDecoration.fillGray,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("msg_user_registeration".tr,
                                        style: theme.textTheme.titleLarge),
                                    SizedBox(height: 14.v),
                                    CustomTextFormField(
                                        controller: controller.nameController,
                                        hintText: "lbl_name".tr,
                                        validator: (value) {
                                          if (!isText(value)) {
                                            return "Please enter valid text";
                                          }
                                          return null;
                                        }),
                                    SizedBox(height: 31.v),
                                    CustomTextFormField(
                                        controller: controller.emailController,
                                        hintText: "lbl_email".tr,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidEmail(value,
                                                  isRequired: true))) {
                                            return "Please enter valid email";
                                          }
                                          return null;
                                        }),
                                    SizedBox(height: 31.v),
                                    CustomTextFormField(
                                        controller:
                                            controller.passwordController,
                                        hintText: "lbl_password".tr,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "Please enter valid password";
                                          }
                                          return null;
                                        },
                                        obscureText: true),
                                    SizedBox(height: 31.v),
                                    CustomTextFormField(
                                        controller:
                                            controller.passwordController1,
                                        hintText: "lbl_retype_password".tr,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "Please enter valid password";
                                          }
                                          return null;
                                        },
                                        obscureText: true),
                                    SizedBox(height: 35.v),
                                    CustomTextFormField(
                                        controller:
                                            controller.phoneNumberController,
                                        hintText: "lbl_phone_number".tr,
                                        textInputType: TextInputType.phone,
                                        validator: (value) {
                                          if (!isValidPhone(value)) {
                                            return "Please enter valid phone number";
                                          }
                                          return null;
                                        }),
                                    SizedBox(height: 35.v),
                                    CustomTextFormField(
                                        controller:
                                            controller.countryController,
                                        hintText: "lbl_country".tr,
                                        textInputAction: TextInputAction.done),
                                    SizedBox(height: 35.v),
                                    CustomElevatedButton(
                                        width: 114.h,
                                        text: "lbl_register".tr,
                                        onTap: () {
                                          onTapRegister();
                                        }),
                                    SizedBox(height: 9.v)
                                  ]))
                        ])))));
  }

  /// Navigates to the iphone1415ProMaxOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the iphone1415ProMaxOneScreen.
  onTapRegister() {
    Get.toNamed(
      AppRoutes.iphone1415ProMaxOneScreen,
    );
  }
}
