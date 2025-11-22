import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';

class SpicyDetiles extends StatelessWidget {
  const SpicyDetiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
           
              children: [
                Image.asset('assets/detiles/pngwing 12.png' , height: 250,),
                Spacer() , 

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustemText(text: 'Customize Your Burger\n to Your Tastes. Ultimate\n Experience',
                     color: Colors.black, size: 16, weight: FontWeight.w500),  

                     Gap(5) , 

                     CustemText(text: "Spicy", color: Colors.black, size: 20, weight: FontWeight.bold) , 

                     Gap(5) , 

                     Slider(
                      value: 0.7,
                       onChanged: (v){

                       } ,  

                       activeColor: AppColor.primery,
                       
                       ) , 

                       Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('🥶') ,
                        Gap(150) , 
                          Text('🌶️') 
                        ],
                       )
                  ], 

                )
              ],
            );
  }
}