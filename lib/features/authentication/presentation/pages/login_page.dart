import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:stride/features/authentication/presentation/pages/signup_page.dart';
import 'package:stride/features/authentication/presentation/pages/forgotpassword_page.dart';
import 'package:stride/features/authentication/presentation/widgets/custom_auth_appbar.dart';
import 'package:stride/features/authentication/presentation/widgets/custom_auth_button.dart';
import 'package:stride/features/authentication/presentation/widgets/custom_auth_divider_content.dart';
import 'package:stride/features/authentication/presentation/widgets/custom_auth_input_fields.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAuthAppbar(
        title: Text(
          "Log In",
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
                  "Welcome back, login to your account!",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: screenWidth * 0.04,
                      ),
                ),
                SizedBox(height: screenHeight * 0.06),
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
                SizedBox(height: screenHeight * 0.010),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => ForgotpasswordPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.01),
                CustomAuthButton(
                  text: "Log In",
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const LoginPage(),
                      ),
                    );
                  },
                ),
                SizedBox(height: screenHeight * 0.05),
                CustomAuthDividerContent(
                  onAuthActionTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => SignupPage(),
                      ),
                    );
                  },
                  authText: "Don't have an account?",
                  authActionText: "Sign Up",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
