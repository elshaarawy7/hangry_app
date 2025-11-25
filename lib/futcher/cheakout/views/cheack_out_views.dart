import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/futcher/cheakout/widget/cheack_out_detiles.dart';
import 'package:hangry_app/futcher/cheakout/widget/cheack_out_visi.dart';
import 'package:hangry_app/futcher/cheakout/widget/payment_widget_mathode.dart';
import 'package:hangry_app/futcher/shared/custem_card.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';

class CheackOutViews extends StatelessWidget {
  const CheackOutViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, size: 25, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustemText(
              text: "Order summary",
              color: Colors.black,
              size: 20,
              weight: FontWeight.bold,
            ),

            Gap(10),

            CheackOutDetiles() ,

            Gap(50),

            CustemText(
              text: "Payment methods",
              color: Colors.black,
              size: 18,
              weight: FontWeight.bold,
            ),

            Gap(20),
            PaymentWidgetMathode(),

            Gap(20),
            CheackOutVisi(),

            Gap(20),

            Gap(20),

            Row(
              children: [
                Icon(Icons.check_box, size: 30, color: Colors.red),
                Gap(5),
                CustemText(
                  text: "Save card details for future payments",
                  color: Colors.grey,
                  size: 16,
                  weight: FontWeight.normal,
                ),
              ],
            ),

            Gap(20),

            CustemCard(text: "Pay Now"),
          ],
        ),
      ),
    );
  }
}

Widget cheackoutWidget(tital, price, isBold, color, size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustemText(
        text: tital,
        color: color ? Colors.black : Colors.grey,
        size: size ? 16 : 18,
        weight: isBold ? FontWeight.bold : FontWeight.w500,
      ),

      CustemText(
        text: price,
        color: color ? Colors.black : Colors.grey,
        size: size ? 16 : 18,
        weight: isBold ? FontWeight.bold : FontWeight.w500,
      ),
    ],
  );
}
