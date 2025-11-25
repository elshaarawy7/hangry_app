import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/futcher/shared/custem_batton.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';

class OrderHistotyView extends StatelessWidget {
  const OrderHistotyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              elevation: 2,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(12) 
              ), 
            
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                     
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/test/image 6.png",
                              height: 100,
                              width: 150,
                              fit: BoxFit.contain,
                            ), 
                            Gap(5) , 
                            CustemText(text: "Hamburger", 
                            color: Colors.black,
                             size: 16,
                             weight: FontWeight.bold , 
                            ) ,  
                    
                            CustemText(text: "Veggie Burger", 
                            color: Colors.black,
                             size: 14,
                             weight: FontWeight.w500 , 
                            ) ,
                    
                          ],
                        ), 
                        
                        Spacer() , 
                        Column(
                          children: [
                            Gap(30) ,
                            CustemText(text: "Hamburger",
                            color: Colors.black,
                            size: 16,
                            weight: FontWeight.bold , 
                          ) ,  
                            Gap(5) , 
                           CustemText(text: r"Price : 5$",
                            color: Colors.black,
                            size: 14,
                            weight: FontWeight.w500 , 
                          ) , 
                          Gap(5) ,
                           CustemText(text: "QTY : 3X",
                            color: Colors.black,
                            size: 14,
                            weight: FontWeight.w500 , 
                          ) , 
                          Gap(10) , 

                        
                          ],
                        ) , 
                      ],
                    ), 
                  ),  

                   CustemBatton(
                            text: "Re Order",
                          ) , 

                          Gap(10) , 
                  
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
