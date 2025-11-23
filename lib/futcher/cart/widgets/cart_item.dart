import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';

class CartItemOrder extends StatelessWidget {
  const CartItemOrder({super.key, required this.imagePath, required this.title, required this.subtitle, required this.quantity, required this.onAdd, required this.onRemove, required this.onDelete}); 

  final String imagePath;
  final String title;
  final String subtitle;
  final int quantity;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Image.asset(imagePath, width: 120),
                Gap(10),
                CustemText(
                  text: title,
                  color: Colors.black,
                  size: 18,
                  weight: FontWeight.bold,
                ),
                Gap(5),
                CustemText(
                  text: subtitle,
                  color: Colors.black,
                  size: 14,
                  weight: FontWeight.normal,
                ),
              ],
            ),

            Spacer(),

            Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: onRemove,
                      child: CircleAvatar(
                        backgroundColor: AppColor.primery,
                        radius: 20,
                        child: Icon(Icons.remove, size: 22, color: Colors.white),
                      ),
                    ), 
                    
                    Gap(20) , 
                    
                    Text("$quantity" , style: TextStyle(
                      color: Colors.black , 
                      fontSize: 20 , 
                      fontWeight: FontWeight.bold , 
                    ),), 

                    Gap(20) , 
                     GestureDetector(
                      onTap: onAdd,
                      child: CircleAvatar(
                        backgroundColor: AppColor.primery,
                        radius: 20,
                        child: Icon(Icons.remove, size: 22, color: Colors.white),
                      ),
                    ), 
                    
                  ],
                ) ,  

                    Gap(20) , 
                // Remove button
          GestureDetector(
            onTap: (){} ,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              decoration: BoxDecoration(
                color: AppColor.primery , 
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Text(
                "Remove",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
