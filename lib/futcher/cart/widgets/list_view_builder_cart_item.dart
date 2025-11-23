import 'package:flutter/material.dart';
import 'package:hangry_app/futcher/cart/widgets/cart_item.dart';

class ListViewBuilderCartItemOrder extends StatelessWidget {
  const ListViewBuilderCartItemOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: CartItemOrder(
            imagePath: 'assets/test/image 6.png',
            title: 'Hamburger ',
            subtitle: 'Veggie Burger',
            quantity: 2,
            onAdd: () {},
            onRemove: () {},
            onDelete: () {},
          ),
        );
      },
    );
  }
}
