import 'package:flutter/material.dart';

import 'package:stride/features/onboarding/onbarding_screen.dart';

class AppEntryPoint extends StatelessWidget {
  const AppEntryPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
