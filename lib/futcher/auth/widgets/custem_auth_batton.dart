import 'package:flutter/material.dart';
import 'package:hangry_app/core/constants/app_color.dart';

class Custem_Auth_Batton extends StatelessWidget {
  const Custem_Auth_Batton({super.key, this.onTap, required this.text}); 
  final void Function()? onTap ;
  final String text ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: double.infinity, 
        height: 60, 
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15) ,
        ), 
        child: Center(
          child: Text(text , style: TextStyle(
            color: AppColor.primery , 
            fontSize: 20 , 
            fontWeight: FontWeight.bold , 
          ),),
        ),
      ),
    );
  }
}