import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:stride/features/authentication/presentation/widgets/custom_auth_appbar.dart';
import 'package:stride/features/authentication/presentation/widgets/custom_auth_button.dart';

class ForgotpasswordPage extends StatelessWidget {
  const ForgotpasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: CustomAuthAppbar(
        title: Text(
          "Forgot password",
          style: TextStyle(
            color: Colors.white,
            fontSize: 21,
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
                const SizedBox(height: 15),
                //
                Text(
                  "Enter your email address to reset your password!",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 50),
                //
                Form(
                  child: TextFormField(
                    style: const TextStyle(
                      color: Colors.white,
                    ), // Ensures entered text is white
                    decoration: InputDecoration(
                      label: Text(
                        "example@gmail.com",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      prefixIcon: Icon(Icons.email, color: Colors.grey),
                      filled: true,
                      fillColor: Colors.grey.withValues(
                        alpha: 0.2,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                ),
                //
                const SizedBox(height: 30),
                // Button
                CustomAuthButton(
                  onPressed: () {},
                  text: "Submit",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
