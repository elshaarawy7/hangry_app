import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/auth/widgets/profile_text_filed.dart';
import 'package:hangry_app/futcher/auth/widgets/top_bar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primery,
      body: Padding(
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

            Gap(20) , 

            ProfileTextFiled(
           
              label: 'Name',

            ) , 


          ],
        ),
      ),
    );
  }
}
