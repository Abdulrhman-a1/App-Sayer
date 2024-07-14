import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:sayeer/controllers/Router/routers.dart';
import 'package:sayeer/utils/helpers/extenstions.dart';
import '../../common/widgets/defultScreen/gradient_color.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneNumberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(milliseconds: 50));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TGradientColor(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TLoginHeader(),
                  TLoginForm(
                    onSignIn: () {
                      FirebaseAuth.instance.verifyPhoneNumber(
                          phoneNumber: phoneNumberController.text,
                          verificationCompleted: (phoneAuthCredential) {
                            print(phoneAuthCredential);
                          },
                          verificationFailed: (error) {
                            print(error.toString());
                          },
                          codeSent: (verificationId, resendToken) {
                            context.pushNamed(Routers.OTP,
                                arguments: verificationId);
                          },
                          codeAutoRetrievalTimeout: (verificationId) {
                            print('Time Out');
                          });
                    },
                    //() => context.pushNamed(Routers.OTP),
                    PhoneNumberController: phoneNumberController,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Image(
              image: AssetImage('assets/images/Pattern/PatternDown.png'),
            ),
          ),
        ],
      ),
    );
  }
}
