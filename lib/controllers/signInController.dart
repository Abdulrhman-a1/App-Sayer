import 'package:get/get.dart';
import '../screens/OTP/verify_PhoneNum.dart';

class NavigationController {
  void navigateToOTP() {
    Get.to(() => VerifyPhoneNumScreen());
  }
}
