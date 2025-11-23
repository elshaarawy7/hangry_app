import 'package:flutter/material.dart';
import 'package:hangry_app/futcher/prodact/widgets/toping_card.dart';

class ListeViewBuilderTopingCard extends StatelessWidget {
  const ListeViewBuilderTopingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ToppingICard(
              imagePath: "assets/test/image 6.png",
              title: 'Tomato',
              onAdd: () {},
            ),
          );
        },
      ),
    );
  }
}
