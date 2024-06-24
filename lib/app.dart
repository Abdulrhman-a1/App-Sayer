import 'package:get/get.dart';
import 'package:sayeer/controllers/Router/app_router.dart';
import 'package:sayeer/screens/login/login.dart';
import 'package:sayeer/utils/constants/text_strings.dart';
import 'package:sayeer/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final AppRouter appRouter;
  const App({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      locale: const Locale('ar'),
      onGenerateRoute: appRouter.genrateRoute,
    );
  }
}
