import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';
import 'package:hangry_app/futcher/shared/custem_text_filed.dart';
import 'package:svg_flutter/svg_flutter.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailContrloer = TextEditingController();
    TextEditingController passowrdContrloer = TextEditingController(); 
    final GlobalKey<FormState> formkay = GlobalKey<FormState>() ; 
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },

      child: Scaffold(
        backgroundColor: AppColor.primery,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Gap(100),
                SvgPicture.asset("assets/logo/logo.svg"),
                Gap(10),
                CustemText(
                  text: "Welcome Back , Discover That Fast Food",
                  color: Colors.white,
                  size: 13,
                  weight: FontWeight.w500,
                ),

                Gap(100),

                CustemTextFiled(
                  hintText: "Email Adrees",
                  controller: emailContrloer,
                ),
                Gap(20),
                CustemTextFiled(
                  hintText: "Password",
                  controller: passowrdContrloer,
                  isPassowrd: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
