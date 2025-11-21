import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/auth/widgets/custem_auth_batton.dart';
import 'package:hangry_app/futcher/shared/custem_text_filed.dart';
import 'package:svg_flutter/svg.dart';

class SinginView extends StatelessWidget {
   SinginView({super.key}); 
 TextEditingController NameContrloer = TextEditingController();
    TextEditingController passowrdContrloer = TextEditingController();
  TextEditingController emailContrloer = TextEditingController();
    TextEditingController confirm_passowrdContrloer = TextEditingController(); 

    final GlobalKey<FormState>  formkey = GlobalKey<FormState>() ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primery,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                        Gap(100),
                      SvgPicture.asset("assets/logo/logo.svg"),  
                       Gap(30) , 
                      CustemTextFiled(
                        hintText: "Name",
                        controller: emailContrloer,
                      ),  
                      Gap(20) , 
            
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
                       Gap(20) , 
                      CustemTextFiled(
                        hintText: "Confirm Password",
                        controller: emailContrloer,
                         isPassowrd: true,
                      ), 
            
                      Gap(20) ,  
            
                       Custem_Auth_Batton(
                      onTap: () {
                        if(formkey.currentState!.validate()){
                          
                        }
                      },
                      text: "Signup")
              ],
            ),
          ),
        ),
      ),
    );
  }
}