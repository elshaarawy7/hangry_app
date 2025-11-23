import 'package:flutter/material.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';

class CustemCard extends StatelessWidget {
  const CustemCard({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustemText(
            text: r"$82.2",
            color: AppColor.primery,
            size: 30,
            weight: FontWeight.w500,
          ), 
          Spacer() , 
          Container(
            height: 100,
            width: 250,
            decoration: BoxDecoration(
              color: AppColor.primery,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
