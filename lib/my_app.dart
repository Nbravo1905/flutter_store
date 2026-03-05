import 'package:flutter/material.dart';
import 'package:store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:store/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: UAppTheme.lightTheme,
      darkTheme: UAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}
