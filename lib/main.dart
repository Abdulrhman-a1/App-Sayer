import 'package:sayeer/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:sayeer/controllers/Router/app_router.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(Duration(seconds: 1));
  FlutterNativeSplash.remove();
  runApp(App(appRouter: AppRouter()));
}
