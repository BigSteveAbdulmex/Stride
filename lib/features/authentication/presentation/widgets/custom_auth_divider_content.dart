import 'package:flutter/material.dart';

class CustomAuthDividerContent extends StatelessWidget {
  const CustomAuthDividerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(
                color: Colors.grey[600],
                thickness: 1,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8,
              ), // Adds spacing around "Or"
              child: Text(
                "Or",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Divider(
                color: Colors.grey[600],
                thickness: 1,
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        // Alternative sign up options ()Google and apple)
        Row(
          mainAxisAlignment: MainAxisAlignment.center, // Centers the buttons
          children: [
            GestureDetector(
              onTap: () {
                // Handle Google sign-in
              },
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey[600]!,
                    width: 3,
                  ),
                ),
                child: Image.asset(
                  'assets/auth_social_logo/google_logo.png',
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            SizedBox(width: 20), // Space between buttons
            GestureDetector(
              onTap: () {
                // Handle Apple sign-in
              },
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey[600]!,
                    width: 3,
                  ),
                ),
                child: Icon(
                  Icons.apple,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 31),
        // Already have an account
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              " Log In",
              style: TextStyle(
                color: Color(0xFFCFFF45),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
