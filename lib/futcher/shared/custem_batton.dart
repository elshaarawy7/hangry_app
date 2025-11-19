import 'package:flutter/material.dart';

class CustemBatton extends StatelessWidget {
  const CustemBatton({super.key, this.onTap, required this.text}); 
  final void Function()? onTap ;
  final String text ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: double.infinity,  
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15) ,
        ), 
        child: Text(text , style: TextStyle(
          color: Colors.white , 
          fontSize: 20 , 
          fontWeight: FontWeight.bold , 
        ),),
      ),
    );
  }
}