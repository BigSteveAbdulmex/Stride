import 'package:flutter/material.dart';
import 'package:stride/features/onboarding/onbarding_screen.dart';

class CustomAuthAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAuthAppbar({super.key, required this.title});

  final Text title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black26,
      title: title,
      leading: Padding(
        padding: const EdgeInsets.all(
          8.0,
        ), // Adds spacing around the back button
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (ctx) => OnboardingScreen(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.withValues(
                alpha: 0.3,
              ), // Semi-transparent circle
            ),
            padding: const EdgeInsets.all(8), // Spacing inside the circle
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
