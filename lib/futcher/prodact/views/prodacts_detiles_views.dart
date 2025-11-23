import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/futcher/prodact/widgets/liste_view_builder_toping_card.dart';
import 'package:hangry_app/futcher/prodact/widgets/spicy_detiles.dart';
import 'package:hangry_app/futcher/prodact/widgets/toping_card.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';

class ProdactsDetilesViews extends StatefulWidget {
  const ProdactsDetilesViews({super.key});

  @override
  State<ProdactsDetilesViews> createState() => _ProdactsDetilesViewsState();
}

class _ProdactsDetilesViewsState extends State<ProdactsDetilesViews> {
  double value = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, size: 30),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpicyDetiles(
              value: value,
              onChanged: (v) {
                setState(() {
                  value = v;
                });
              },
            ), 
            Gap(20) ,  

            CustemText(text: 'Toppings', color: Colors.black, size: 20, weight: FontWeight.bold) , 
            Gap(10) , 
            ListeViewBuilderTopingCard()
          ],
        ),
      ),
    );
  }
}
