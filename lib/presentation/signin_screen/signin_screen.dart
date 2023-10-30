import 'controller/signin_controller.dart';
import 'package:flutter/material.dart';
import 'package:prisha_the_explorer/core/app_export.dart';
import 'package:prisha_the_explorer/widgets/custom_elevated_button.dart';
import 'package:prisha_the_explorer/widgets/custom_text_form_field.dart';
import 'package:prisha_the_explorer/domain/googleauth/google_auth_helper.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:prisha_the_explorer/domain/facebookauth/facebook_auth_helper.dart';
import 'package:prisha_the_explorer/domain/facebookauth/facebook_user.dart';

class SigninScreen extends GetWidget<SigninController> {
  const SigninScreen({Key? key}) : super(key: key);

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
                                    width: 114.h,
                                    text: "lbl_login".tr,
                                    onTap: () {
                                      signInUsingGoogle();
                                    }),
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
                                          margin: EdgeInsets.only(bottom: 4.v),
                                          onTap: () {
                                            signInwithGoogle();
                                          }),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgFacebook,
                                          height: 33.v,
                                          width: 31.h,
                                          margin: EdgeInsets.only(left: 21.h),
                                          onTap: () {
                                            signInwithFacebook();
                                          }),
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

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccessGoogleAuthResponse] method is called
  /// with the [GoogleUser] object as a parameter.
  /// If the sign-in fails, the [onErrorGoogleAuthResponse] method is called.
  ///
  /// Throws an exception if the Google sign-in process fails.
  signInUsingGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        onSuccessGoogleAuthResponse(googleUser);
      } else {
        onErrorGoogleAuthResponse();
      }
    }).catchError((onError) {
      onErrorGoogleAuthResponse();
    });
  }

  /// Displays a snackBar message when the action is triggered.
  /// The raw snackbar display the specified message `Login Done.` using the Get package.
  onSuccessGoogleAuthResponse(GoogleSignInAccount googleUser) {
    Get.rawSnackbar(message: "Login Done.");
    Get.rawSnackbar(message: "Login Successful");
  }

  /// Displays a snackBar message when the action is triggered.
  /// The raw snackbar display the specified message `Error` using the Get package.
  onErrorGoogleAuthResponse() {
    Get.rawSnackbar(message: "Error");
    Get.rawSnackbar(message: "Error");
  }

  /// Navigates to the registrationScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the registrationScreen.
  onTapRegister() {
    Get.toNamed(
      AppRoutes.registrationScreen,
    );
  }

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccessGoogleAuthResponse] method is called
  /// with the [GoogleUser] object as a parameter.
  /// If the sign-in fails, the [onErrorGoogleAuthResponse] method is called.
  ///
  /// Throws an exception if the Google sign-in process fails.
  signInwithGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        onSuccessGoogleAuthResponse(googleUser);
      } else {
        onErrorGoogleAuthResponse();
      }
    }).catchError((onError) {
      onErrorGoogleAuthResponse();
    });
  }

  /// Displays a snackBar message when the action is triggered.
  /// The raw snackbar display the specified message `Login Successful` using the Get package.
  onSuccessGoogleAuthResponse(GoogleSignInAccount googleUser) {
    Get.rawSnackbar(message: "Login Successful");
  }

  /// Performs a Facebook sign-in and returns a [FacebookUser] object.
  ///
  /// If the sign-in is successful, the [onSuccessFacebookAuthResponse] method is called
  /// with the [FacebookUser] object as a parameter.
  /// If the sign-in fails, the [onErrorFacebookAuthResponse] method is called.
  ///
  /// Throws an exception if the Facebook sign-in process fails.
  signInwithFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      onSuccessFacebookAuthResponse(facebookUser);
    }).catchError((onError) {
      onErrorFacebookAuthResponse();
    });
  }

  /// Displays a snackBar message when the action is triggered.
  /// The raw snackbar display the specified message `Login Success` using the Get package.
  onSuccessFacebookAuthResponse(FacebookUser facebookUser) {
    Get.rawSnackbar(message: "Login Success");
  }

  /// Displays a snackBar message when the action is triggered.
  /// The raw snackbar display the specified message `Error` using the Get package.
  onErrorFacebookAuthResponse() {
    Get.rawSnackbar(message: "Error");
  }
}
