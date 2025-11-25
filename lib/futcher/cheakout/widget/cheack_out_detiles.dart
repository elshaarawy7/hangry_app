import 'package:flutter/material.dart';
import 'package:hangry_app/futcher/cheakout/views/cheack_out_views.dart';

class CheackOutDetiles extends StatelessWidget {
  const CheackOutDetiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        cheackoutWidget("Order", r"$16.85", false, false, false),
        const SizedBox(height: 5),

        cheackoutWidget("Taxes", r"$0.3", false, false, false),
        const SizedBox(height: 5),

        cheackoutWidget("Delivery fees", r"$1.5", false, false, false),
        const SizedBox(height: 10),

        const Divider(),
        const SizedBox(height: 10),

        cheackoutWidget("Total", r"$18.19", true, true, false),
        const SizedBox(height: 10),

        cheackoutWidget(
          "Estimated delivery time:",
          "15 - 30 mins",
          true,
          true,
          true,
        ),
      ],
    );
  }
}