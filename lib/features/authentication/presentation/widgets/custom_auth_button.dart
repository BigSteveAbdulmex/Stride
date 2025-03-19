import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final double borderRadius;

  const CustomAuthButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = const Color(0xFFCFFF45),
    this.textColor = Colors.black,
    this.borderRadius = 15.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Makes button take full width
      height: 50, // Adjust height
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color, // Button color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius,
            ), // Rounded corners
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
