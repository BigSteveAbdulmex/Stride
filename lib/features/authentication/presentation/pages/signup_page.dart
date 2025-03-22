import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:stride/features/authentication/presentation/pages/login_page.dart';
import 'package:stride/features/authentication/presentation/widgets/custom_auth_appbar.dart';
import 'package:stride/features/authentication/presentation/widgets/custom_auth_button.dart';
import 'package:stride/features/authentication/presentation/widgets/custom_auth_divider_content.dart';
import 'package:stride/features/authentication/presentation/widgets/custom_auth_input_fields.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAuthAppbar(
        title: Text(
          "Sign Up",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.w600,
                fontSize: screenWidth * 0.05, // Adjust text size dynamically
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.05), // Responsive spacing
                // App Logo
                Text(
                  "Stride",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontFamily: GoogleFonts.pacifico().fontFamily,
                        letterSpacing: 2.0,
                        fontSize: screenWidth * 0.12, // Scale font size
                      ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  "Hi there, signup to get started!",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: screenWidth * 0.04,
                      ),
                ),
                SizedBox(height: screenHeight * 0.06),
                // Form
                Column(
                  children: [
                    SizedBox(height: screenHeight * 0.01),
                    CustomAuthTextField(
                      hintText: "   Email",
                      labelText: "example@gmail.com",
                      icon: Icons.email_outlined,
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    CustomAuthTextField(
                      hintText: "   Password",
                      labelText: "********",
                      icon: Icons.lock_outline_rounded,
                      isPassword: true,
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.05),
                // Sign up button
                CustomAuthButton(
                  text: "Sign Up",
                  onPressed: () {},
                ),
                SizedBox(height: screenHeight * 0.06),
                // Divider
                CustomAuthDividerContent(
                  onAuthActionTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const LoginPage(),
                      ),
                    );
                  },
                  authText: "Already have an account?",
                  authActionText: "Log In",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
