import 'package:get/get.dart';
import 'package:numbersandcalc/modules/home/home_page.dart';

abstract class RoutesPaths {
  static const home = '/home';
}

class RoutesPages {
  static final pageList = [
    GetPage(
      name: RoutesPaths.home,
      page: () => HomePage(),
    ),
  ];
}
