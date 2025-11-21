import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';
import 'package:svg_flutter/svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Gap(60) , 
        
            /// header  
             Row(
               children: [ 


                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     SvgPicture.asset(
                      "assets/logo/logo.svg" , 
                      color: AppColor.primery, 
                      height: 40,
                      ), 
                 
                      Gap(5) , 
                 
                      CustemText(
                      text: " Hello , Elshaarawy", 
                      color: Colors.grey.shade500, 
                       size: 20,
                       weight: FontWeight.w500 , 
                       ) ,  
                  ],
                 ),  
                 Spacer() ,
               
                CircleAvatar(
                  radius: 30,
                ), 
               ],
             )  , 
          
          ],
        ),
      ),
    );
  }
}