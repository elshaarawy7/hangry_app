import 'package:flutter/material.dart';
import 'package:hangry_app/core/constants/app_color.dart';

class CustemCard extends StatelessWidget {
  const CustemCard({super.key, required this.text}); 

  final String text ;

  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 100,
                    width: 250,
                    decoration: BoxDecoration(
                      color: AppColor.primery,
                      borderRadius: BorderRadius.circular(25),
                    ), 
                    child: Center(
                      child: Text(text , style: TextStyle(
                        color: Colors.white , 
                        fontSize: 20 , 
                        fontWeight: FontWeight.bold ,
                      ),),
                    ),
                  );
  }
}