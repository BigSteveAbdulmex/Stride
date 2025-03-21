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
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: CustomAuthAppbar(
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 45),
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
                const SizedBox(height: 15),
                //
                Text(
                  "Hi there, signup to get started!",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 50),
                // form
                Column(
                  children: [
                    const SizedBox(height: 8),
                    CustomAuthTextField(
                      hintText: "   Email",
                      labelText: "example@gmail.com",
                      icon: Icons.email_outlined,
                    ),
                    const SizedBox(height: 16),
                    CustomAuthTextField(
                      hintText: "   Password",
                      labelText: "********",
                      icon: Icons.lock_outline_rounded,
                      isPassword: true,
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                // Sign up button
                CustomAuthButton(
                  text: "Sign Up",
                  onPressed: () {},
                ),
                const SizedBox(height: 42),
                // Divider
                CustomAuthDividerContent(
                  onAuthActionTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => LoginPage(),
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
// /
