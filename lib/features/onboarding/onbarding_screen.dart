import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Pushes content down
            const Spacer(),
            // App Logo
            Text(
              "Stride",
              textAlign: TextAlign.center,
              style: GoogleFonts.pacifico(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            const Spacer(),
            // Main Title
            const Text(
              "Make Your Day With Stride",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            // Subtitle/Description
            const Text(
              "Plan smarter, track tasks, and stay productive without the clutter. Stride helps you stay in control of your time and goals.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(
                  255,
                  167,
                  157,
                  157,
                ), // Gray for secondary text
              ),
            ),
            const SizedBox(height: 90),
            // Get Started Button
            ElevatedButton(
              onPressed: () {
                // Navigate to the next screen (login/signup)
                Navigator.pushReplacementNamed(
                  context,
                  '/login',
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFCFFF45),
                padding: const EdgeInsets.symmetric(
                  horizontal: 120,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            // Adds space before hitting the bottom
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
