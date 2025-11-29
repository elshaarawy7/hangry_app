import 'package:flutter/material.dart';

class ProfileTextFiled extends StatelessWidget {

  final String label;
  final bool isPassword;
  final TextEditingController? controller;

  const ProfileTextFiled({
    super.key,

    required this.label,
    this.isPassword = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.white , 
          fontSize: 20 , 
          fontWeight: FontWeight.bold , 
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white , width: 2) , 
        ), 

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white , width: 2) , 
        ), 

        enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white , width: 2) , 
        ) , 
      ),
    );
  }
}
