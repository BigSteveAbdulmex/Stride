import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stride/features/authentication/presentation/pages/signup_page.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.06, // 6% of screen width
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),

            // App Logo
            Text(
              "Stride",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontFamily: GoogleFonts.pacifico().fontFamily,
                    letterSpacing:
                        width * 0.01, // Adjust spacing based on screen width
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),

            const Spacer(),

            // Main Title
            Text(
              "Make Your Day With Stride",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: width * 0.07, // 7% of screen width
                    fontWeight: FontWeight.bold,
                  ),
            ),

            SizedBox(height: height * 0.03), // 3% of screen height

            // Subtitle/Description
            Text(
              "Plan smarter, track tasks, and stay productive without the clutter. Stride helps you stay in control of your time and goals.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: width * 0.04, // 4% of screen width
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),

            SizedBox(height: height * 0.12), // 12% of screen height

            // Get Started Button
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => SignupPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFCFFF45),
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.3, // 30% of screen width
                  vertical: height * 0.02, // 2% of screen height
                ),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(width * 0.04), // 4% of screen width
                ),
              ),
              child: Text(
                "Get Started",
                style: TextStyle(
                  fontSize: width * 0.045, // 4.5% of screen width
                  color: Colors.black,
                ),
              ),
            ),

            SizedBox(height: height * 0.04), // 4% of screen height
          ],
        ),
      ),
    );
  }
}
