import 'package:flutter/material.dart';

class CustomProfileButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;

  const CustomProfileButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white , 
            width: 2 
          ),
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15),
          
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 12),
            Icon(
              icon,
              color: iconColor,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
