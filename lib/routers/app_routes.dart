import 'package:cots/modules/login/bindings/login_binding.dart';
import 'package:cots/modules/main/bindings/main_binding.dart';
import 'package:cots/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:get/get.dart';
import '../modules/onboarding/onboarding_page.dart';
import '../modules/login/login_page.dart';
import '../modules/main/main_page.dart';

class AppRoutes {
  static final routes = [
    GetPage(
        name: '/onboarding',
        page: () => OnboardingPage(),
        binding: OnboardingBinding()),
    GetPage(name: '/login', page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: '/main', page: () => MainPage(), binding: MainBinding()),
  ];
}
