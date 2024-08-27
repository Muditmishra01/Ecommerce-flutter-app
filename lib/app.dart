import 'package:ecommerce/features/authentication/screen/onboarding/onboarding.dart';
import 'package:ecommerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(                                             // previous we were using only Material app  , error was null check error
      themeMode: ThemeMode.system,
      theme:MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
