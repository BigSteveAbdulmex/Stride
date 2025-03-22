import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:stride/features/authentication/presentation/widgets/custom_auth_appbar.dart';
import 'package:stride/features/authentication/presentation/widgets/custom_auth_button.dart';

class ForgotpasswordPage extends StatelessWidget {
  const ForgotpasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    // final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAuthAppbar(
        title: Text(
          "Forgot password",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.w600,
                fontSize: screenWidth * 0.05, // Adjust text size dynamically
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
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontFamily: GoogleFonts.pacifico().fontFamily,
                        letterSpacing: 2.0,
                        fontSize: screenWidth * 0.12, // Scale font size
                      ),
                ),
                const SizedBox(height: 15),
                //
                Text(
                  "Enter your email address to reset your password!",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 50),
                //
                Form(
                  child: TextFormField(
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    decoration: InputDecoration(
                      label: Text(
                        "example@gmail.com",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
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
