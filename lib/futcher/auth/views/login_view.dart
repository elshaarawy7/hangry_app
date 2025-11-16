import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';
import 'package:svg_flutter/svg_flutter.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus() ;
      }, 
      child: Scaffold(
        backgroundColor: AppColor.primery,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Gap(100) , 
                SvgPicture.asset("assets/logo/logo.svg") , 
                Gap(10) , 
                CustemText(
                  text: "Welcome Back , Discover That Fast Food", 
                   color: Colors.white, 
                   size: 13, 
                   weight: FontWeight.w500 , 
                   ) , 

                   Gap(70) , 

                   TextFormField(
                    cursorColor: Colors.green,
                    cursorHeight: 20,
                    decoration: InputDecoration(
                      filled: true , 
                      fillColor: Colors.white,
                      hintText: "Email", 
                      hintStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10) , 
                      ) , 
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                   ) , 
              ],
            ),
          ),
        ),
      ),
    );
  }
}