import 'package:riyadebnathdas_56313_s_application4/presentation/iphone_14_15_pro_max_one_screen/iphone_14_15_pro_max_one_screen.dart';
import 'package:riyadebnathdas_56313_s_application4/presentation/iphone_14_15_pro_max_one_screen/binding/iphone_14_15_pro_max_one_binding.dart';
import 'package:riyadebnathdas_56313_s_application4/presentation/iphone_14_15_pro_max_two_screen/iphone_14_15_pro_max_two_screen.dart';
import 'package:riyadebnathdas_56313_s_application4/presentation/iphone_14_15_pro_max_two_screen/binding/iphone_14_15_pro_max_two_binding.dart';
import 'package:riyadebnathdas_56313_s_application4/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:riyadebnathdas_56313_s_application4/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String iphone1415ProMaxOneScreen =
      '/iphone_14_15_pro_max_one_screen';

  static const String iphone1415ProMaxTwoScreen =
      '/iphone_14_15_pro_max_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: iphone1415ProMaxOneScreen,
      page: () => Iphone1415ProMaxOneScreen(),
      bindings: [
        Iphone1415ProMaxOneBinding(),
      ],
    ),
    GetPage(
      name: iphone1415ProMaxTwoScreen,
      page: () => Iphone1415ProMaxTwoScreen(),
      bindings: [
        Iphone1415ProMaxTwoBinding(),
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
      page: () => Iphone1415ProMaxOneScreen(),
      bindings: [
        Iphone1415ProMaxOneBinding(),
      ],
    )
  ];
}
