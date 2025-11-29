import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/auth/views/singin_view.dart';
import 'package:hangry_app/futcher/auth/widgets/custem_auth_batton.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';
import 'package:hangry_app/futcher/shared/custem_text_filed.dart';
import 'package:svg_flutter/svg_flutter.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailContrloer = TextEditingController();
    TextEditingController passowrdContrloer = TextEditingController();
    final GlobalKey<FormState> formkay = GlobalKey<FormState>();
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },

      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Form(
            key: formkay,
            child: Column(
              children: [
                Gap(100),
                SvgPicture.asset(
                  "assets/logo/logo.svg",
                  color: AppColor.primery,
                ),
                Gap(10),

                CustemText(
                  text: "Welcome Back , Discover That Fast Food",
                  color: Colors.black,
                  size: 13,
                  weight: FontWeight.w500,
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
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
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

                          Gap(30),
                          Custem_Auth_Batton(
                            onTap: () {
                              if (formkay.currentState!.validate()) {}
                            },
                            text: "Login",
                          ),

                          Gap(10),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "create acount?",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),

                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return SinginView();
                                      },
                                    ),
                                  );
                                },

                                child: Text(
                                  "sing in ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
