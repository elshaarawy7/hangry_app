import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';

class CheackOutVisi extends StatelessWidget {
  const CheackOutVisi({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Card(
        color: Color(0xffF3F4F6),
        elevation: 1,
        shadowColor: Colors.black,
        child: Row(
          children: [
            Image.asset("assets/test/image 13.png"),
            Gap(20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustemText(
                  text: "Debit card",
                  color: Colors.black,
                  size: 16,
                  weight: FontWeight.w600,
                ),
                Gap(5),
                CustemText(
                  text: "3566 **** **** 0505",
                  color: Colors.grey,
                  size: 12,
                  weight: FontWeight.normal,
                ),
              ],
            ), 

             
          ],
        ),
      ),
    );
  }
}
