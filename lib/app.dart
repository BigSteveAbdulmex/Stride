import 'package:flutter/material.dart';

import 'package:stride/core/utils/theme/theme.dart';

import 'package:stride/features/onboarding/onbarding_screen.dart';

class AppEntryPoint extends StatelessWidget {
  const AppEntryPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}
