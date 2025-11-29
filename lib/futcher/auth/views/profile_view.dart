import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/auth/widgets/cuetem_profile_baton.dart';
import 'package:hangry_app/futcher/auth/widgets/profile_text_filed.dart';
import 'package:hangry_app/futcher/auth/widgets/top_bar.dart';
import 'package:hangry_app/futcher/cheakout/widget/cheack_out_visi.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primery,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Gap(20),
              // arow back and seting acions
              TopBar(),

              Gap(50),

              // image profile
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.white, blurRadius: 2)],
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage('assets/profile/Jumaa Mubarakah.jpg'),
                  ),
                ),
              ),

              Gap(30),

              ProfileTextFiled(label: 'Name'),
              Gap(20),

              ProfileTextFiled(label: 'Email'),

              Gap(20),

              ProfileTextFiled(label: 'Delivery address'),

              Gap(20),

              ProfileTextFiled(label: 'Password'),

              Gap(30),

              CheackOutVisi(),
              Gap(20) , 

              Row(
                children: [
                  CustomProfileButton(
                    text: "Edit Profile",
                    icon: Icons.edit,
                    onTap: () {
                      print("Edit Profile clicked");
                    },
                  ),

                  Gap(20),

                  CustomProfileButton(
                    text: "Log out",
                    icon: Icons.logout,
                    backgroundColor: Colors.transparent,
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    onTap: () {
                      print("Logout clicked");
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
