import 'package:flutter/material.dart';

class CustomAuthDividerContent extends StatelessWidget {
  const CustomAuthDividerContent({
    super.key,
    required this.authText,
    required this.authActionText,
    required this.onAuthActionTap,
  });

  final String authText;
  final String authActionText;
  final VoidCallback onAuthActionTap;

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
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: Text(
                "Or",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Handle Google sign-in
              },
              child: Container(
                padding: const EdgeInsets.all(12),
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
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () {
                // Handle Apple sign-in
              },
              child: Container(
                padding: const EdgeInsets.all(12),
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
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 33),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              authText,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
            const SizedBox(width: 5),
            GestureDetector(
              onTap: onAuthActionTap,
              child: Text(
                authActionText,
                style: const TextStyle(
                  color: Color(0xFFCFFF45),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
