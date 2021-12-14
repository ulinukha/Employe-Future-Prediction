import 'package:gabut_aja/app/ui/modules/home/bindings/binding.dart';
import 'package:gabut_aja/app/ui/modules/home/views/view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class Pages {
  Pages._();

  static const HOME = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
