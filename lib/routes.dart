import 'package:get/get.dart';
import 'package:getx_named_routes_example/view/first_screen.dart';
import 'package:getx_named_routes_example/view/forth_screen.dart';
import 'package:getx_named_routes_example/view/second_screen.dart';
import 'package:getx_named_routes_example/view/third_screen.dart';

class Routes {
  static const FIRST_SCREEN = '/';
  static const SECOND_SCREEN = '/SecondScreen';
  static const THIRD_SCREEN = '/ThirdScreen';
  static const FORTH_SCREEN = '/ForthScreen';

  static final routes = [
    GetPage(
      name: FIRST_SCREEN,
      page: () => const FirstScreen(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: SECOND_SCREEN,
      page: () => const SecondScreen(),
      transition: Transition.circularReveal,
      preventDuplicates: false,
    ),
    GetPage(
      name: THIRD_SCREEN,
      page: () => const ThirdScreen(),
      transition: Transition.fade,
    ),
    GetPage(
        name: FORTH_SCREEN,
        page: () => const ForthScreen(),
        transition: Transition.downToUp,
        preventDuplicates: false,
        ),
  ];
}
