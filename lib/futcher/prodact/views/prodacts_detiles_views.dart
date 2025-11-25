import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/futcher/prodact/widgets/liste_view_builder_toping_card.dart';
import 'package:hangry_app/futcher/prodact/widgets/spicy_detiles.dart';
import 'package:hangry_app/futcher/shared/custem_card.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // slider
              SpicyDetiles(
                value: value,
                onChanged: (v) {
                  setState(() {
                    value = v;
                  });
                },
              ),
              Gap(20),

              // toping
              CustemText(
                text: 'Toppings',
                color: Colors.black,
                size: 20,
                weight: FontWeight.bold,
              ),
              Gap(10),
              ListeViewBuilderTopingCard(),

              // Side options
              Gap(30),
              CustemText(
                text: 'Side options',
                color: Colors.black,
                size: 20,
                weight: FontWeight.bold,
              ),
              Gap(10),
              ListeViewBuilderTopingCard(),
              Gap(30),
              CustemText(
                text: "Total",
                color: Colors.black,
                size: 20,
                weight: FontWeight.bold,
              ),
              Gap(30),

              // total and cart
                  CustemCard(text: 'Add To Card') ,
              

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
