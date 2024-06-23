import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import '../../common/widgets/gridenant_color/gradient_color.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';
import '../../controllers/signInController.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final NavigationController _navigationController = NavigationController();

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
                  TLoginForm(onSignIn: _navigationController.navigateToOTP),
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
