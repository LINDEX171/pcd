
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc/features/screens/onboarding/onboarding.dart';
import 'package:pc/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: TAppTheme.lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: TAppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}
