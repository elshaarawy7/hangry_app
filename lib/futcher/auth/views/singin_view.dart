import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/auth/views/login_view.dart';
import 'package:hangry_app/futcher/auth/widgets/custem_auth_batton.dart';
import 'package:hangry_app/futcher/shared/custem_text_filed.dart';
import 'package:svg_flutter/svg.dart';

class SinginView extends StatelessWidget {
  SinginView({super.key});
  TextEditingController NameContrloer = TextEditingController();
  TextEditingController passowrdContrloer = TextEditingController();
  TextEditingController emailContrloer = TextEditingController();
  TextEditingController confirm_passowrdContrloer = TextEditingController();

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Gap(100),
              SvgPicture.asset(
                "assets/logo/logo.svg",
                color: AppColor.primery,
              ),  
              Gap(10) , 
              Text(
  "Welcome to Hangry! 🍔",
  style: TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.normal,
  ),
),
              Gap(100),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.primery,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15), 
                    child: Column(
                      
                      children: [
                        Gap(50) , 
                        CustemTextFiled(
                          hintText: "Name",
                          controller: emailContrloer,
                        ),
                        Gap(20),
                            
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
                            
                                  Gap(50),
                        Custem_Auth_Batton(
                          onTap: () {
                            if (formkey.currentState!.validate()) {}
                          },
                          text: "Signup",
                        ),  

                        Gap(20) , 

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Alrydy have an acount?" , style: TextStyle(
                              color: Colors.white , 
                              fontSize: 17 , 
                              fontWeight: FontWeight.normal , 
                            ),) , 

                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return LoginView() ;
                                })) ; 
                              }, 

                              child: Text("Login" , style: TextStyle(
                                color: Colors.white , 
                                fontSize: 20 , 
                                fontWeight: FontWeight.bold , 
                              ),),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
