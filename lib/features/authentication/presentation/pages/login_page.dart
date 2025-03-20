import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:stride/features/authentication/presentation/pages/signup_page.dart';
import 'package:stride/features/authentication/presentation/widgets/custom_auth_appbar.dart';
import 'package:stride/features/authentication/presentation/widgets/custom_auth_button.dart';
import 'package:stride/features/authentication/presentation/widgets/custom_auth_divider_content.dart';
import 'package:stride/features/authentication/presentation/widgets/custom_auth_input_fields.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: CustomAuthAppbar(
        title: Text(
          "Log In",
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
                const SizedBox(height: 43),
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
                const SizedBox(height: 50),
                Column(
                  children: [
                    const SizedBox(height: 6),
                    CustomAuthTextField(
                      hintText: "   Email",
                      icon: Icons.email_outlined,
                    ),
                    const SizedBox(height: 16),
                    CustomAuthTextField(
                      hintText: "   Password",
                      icon: Icons.lock_outline_rounded,
                      isPassword: true,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                CustomAuthButton(
                  text: "Log In",
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => LoginPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 42),
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
