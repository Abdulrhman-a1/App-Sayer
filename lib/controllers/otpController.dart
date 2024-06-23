import 'package:get/get.dart';
import 'package:sayeer/screens/login/login.dart';
import 'package:sayeer/screens/home/home_screen.dart';

class OTPController {
  void resendOTP() {
    //في حال تم اعادة ارسال الرمز
  }

  void verifyButton() {
    Get.off(() => HomeScreen());
  }

  void backButton() {
    Get.off(() => LoginScreen());
  }
}
