import 'package:flutter/material.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';

class PaymentWidgetMathode extends StatelessWidget {
  const PaymentWidgetMathode({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, 
      width: double.infinity,
      child: Card(
        
        color: Colors.brown[900] , 
        elevation: 2, 
        shadowColor: Colors.black, 
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15) , 
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
                
              CircleAvatar(
                backgroundColor: AppColor.primery, 
                radius: 35, 
                child: Text(r"$" , style: TextStyle(
                  color: Colors.white , 
                  fontSize: 35 , 
                  fontWeight: FontWeight.bold , 
                ),),
              ) , 

              CustemText(
                text: "Cash on Delivery", 
                color: Colors.white, 
                size: 20, 
                weight: FontWeight.bold , 
                ) ,  

              Icon(Icons.radio_button_checked , size: 25, color: Colors.white,)
            ],
          ),
        ),
      ),
    );
  }
}