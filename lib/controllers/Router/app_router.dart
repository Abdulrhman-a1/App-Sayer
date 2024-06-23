import 'package:flutter/material.dart';
import 'package:sayeer/controllers/Router/routers.dart';
import 'package:sayeer/screens/OTP/verify_PhoneNum.dart';
import 'package:sayeer/screens/home/home_screen.dart';
import 'package:sayeer/screens/login/login.dart';

class AppRouter {
  Route genrateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routers.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routers.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routers.OTP:
        return MaterialPageRoute(builder: (_) => VerifyPhoneNumScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
