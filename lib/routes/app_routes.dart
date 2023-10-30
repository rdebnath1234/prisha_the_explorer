import 'package:riyadebnathdas_56313_s_application4/presentation/signin_screen/signin_screen.dart';
import 'package:riyadebnathdas_56313_s_application4/presentation/signin_screen/binding/signin_binding.dart';
import 'package:riyadebnathdas_56313_s_application4/presentation/registration_screen/registration_screen.dart';
import 'package:riyadebnathdas_56313_s_application4/presentation/registration_screen/binding/registration_binding.dart';
import 'package:riyadebnathdas_56313_s_application4/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:riyadebnathdas_56313_s_application4/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String signinScreen = '/signin_screen';

  static const String registrationScreen = '/registration_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: signinScreen,
      page: () => SigninScreen(),
      bindings: [
        SigninBinding(),
      ],
    ),
    GetPage(
      name: registrationScreen,
      page: () => RegistrationScreen(),
      bindings: [
        RegistrationBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SigninScreen(),
      bindings: [
        SigninBinding(),
      ],
    )
  ];
}
