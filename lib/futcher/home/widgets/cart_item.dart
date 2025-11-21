import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.text, required this.image, required this.desc, required this.rate}); 

  final String text , image , desc , rate ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200, 
  
      child: Card(
        
          color: Colors.white , 
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13) , 
      
        ), 
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image , width: 180,) , 
              Gap(5) , 
              CustemText(text: text, color: Colors.black, size: 20, weight: FontWeight.bold) , 
              Gap(5) , 
              CustemText(text: desc, color: Colors.grey, size: 18, weight: FontWeight.w500) ,  
          
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.star , color: Colors.amber , size: 18,) ,  
                  Gap(5) , 
                  CustemText(text: rate, color: Colors.black, size: 16, weight: FontWeight.w400) ,
                ],
              ) 
            ],
          ),
        ),
      ),
    );
  }
}