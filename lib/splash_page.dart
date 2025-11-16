import 'package:flutter/material.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:svg_flutter/svg_flutter.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primery ,  
      body: Center(
        child: Column(
          children: [ 
            SizedBox(height: 150,) , 
            SvgPicture.asset("assets/logo/logo.svg") , 
            Spacer() , 
            Image.asset("assets/splash/splash.png") , 
          ],
        ),
      ),
    );
  }
}