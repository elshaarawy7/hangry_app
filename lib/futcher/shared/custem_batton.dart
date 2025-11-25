import 'package:flutter/material.dart';
import 'package:hangry_app/core/constants/app_color.dart';

class CustemBatton extends StatelessWidget {
  const CustemBatton({super.key, required this.text}); 

  final String text ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 45, 
       width: double.infinity,
       margin: EdgeInsets.symmetric(horizontal: 20), 
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12) , 
          color: AppColor.primery
        ), 
        child: Center(
          child: Text(text , style: TextStyle(
            color: Colors.white , 
            fontSize: 20 , 
            fontWeight: FontWeight.bold , 
          ),),
        ),
      ));
  }
}