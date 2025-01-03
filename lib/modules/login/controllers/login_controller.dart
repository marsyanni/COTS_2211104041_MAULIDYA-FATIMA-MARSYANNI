import 'package:get/get.dart';

class LoginController extends GetxController {
  var phoneNumber = ''.obs;

  void setPhoneNumber(String number) {
    phoneNumber.value = number;
  }
}
