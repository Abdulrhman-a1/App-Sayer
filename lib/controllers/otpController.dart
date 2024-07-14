import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:sayeer/screens/login/login.dart';
import 'package:sayeer/screens/home/home_screen.dart';

class OTPController {
  void resendOTP() {
    //في حال تم اعادة ارسال الرمز
  }

  void verifyButton() {
    try {
      final credential = PhoneAuthProvider.credential(
          verificationId: Get.arguments, smsCode: );
    } catch (e) {
      Get.snackbar('Error', 'Invalid OTP');
    }
    Get.off(() => HomeScreen());
  }

  void backButton() {
    Get.off(() => LoginScreen());
  }
}
