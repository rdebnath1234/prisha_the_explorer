import 'controller/iphone_14_15_pro_max_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:riyadebnathdas_56313_s_application4/core/app_export.dart';
import 'package:riyadebnathdas_56313_s_application4/widgets/custom_elevated_button.dart';
import 'package:riyadebnathdas_56313_s_application4/widgets/custom_text_form_field.dart';

class Iphone1415ProMaxOneScreen
    extends GetWidget<Iphone1415ProMaxOneController> {
  const Iphone1415ProMaxOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 42.h, vertical: 152.v),
                          decoration: AppDecoration.fillGray,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 31.v),
                                Text("lbl_sign_up".tr,
                                    style: theme.textTheme.titleLarge),
                                SizedBox(height: 20.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("lbl_email".tr,
                                        style: theme.textTheme.bodyMedium)),
                                SizedBox(height: 10.v),
                                CustomTextFormField(
                                    controller: controller.emailController),
                                SizedBox(height: 12.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("lbl_password".tr,
                                        style: theme.textTheme.bodyMedium)),
                                SizedBox(height: 8.v),
                                CustomTextFormField(
                                    controller: controller.passwordController,
                                    textInputAction: TextInputAction.done),
                                SizedBox(height: 37.v),
                                CustomElevatedButton(
                                    width: 114.h, text: "lbl_login".tr),
                                SizedBox(height: 44.v),
                                CustomElevatedButton(
                                    height: 30.v,
                                    text: "lbl_register".tr,
                                    onTap: () {
                                      onTapRegister();
                                    }),
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 21.v, right: 3.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 11.v, bottom: 7.v),
                                              child: SizedBox(
                                                  width: 126.h,
                                                  child: Divider())),
                                          Text("lbl_or".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeOnPrimary),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 11.v, bottom: 7.v),
                                              child: SizedBox(
                                                  width: 126.h,
                                                  child: Divider()))
                                        ])),
                                SizedBox(height: 8.v),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgGoogle,
                                          height: 27.adaptSize,
                                          width: 27.adaptSize,
                                          margin: EdgeInsets.only(bottom: 4.v)),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgFacebook,
                                          height: 33.v,
                                          width: 31.h,
                                          margin: EdgeInsets.only(left: 21.h)),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLinkedin,
                                          height: 31.v,
                                          width: 35.h,
                                          margin: EdgeInsets.only(
                                              left: 20.h, bottom: 2.v))
                                    ])
                              ]))
                    ]))));
  }

  /// Navigates to the iphone1415ProMaxTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the iphone1415ProMaxTwoScreen.
  onTapRegister() {
    Get.toNamed(
      AppRoutes.iphone1415ProMaxTwoScreen,
    );
  }
}
