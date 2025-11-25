import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/futcher/cart/widgets/list_view_builder_cart_item.dart';
import 'package:hangry_app/futcher/cheakout/views/cheack_out_views.dart';
import 'package:hangry_app/futcher/shared/custem_card.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12 , vertical: 20), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(50) , 
                ListViewBuilderCartItem(

                ) ,

                CustemText(text: "Total", color:Colors.black, size: 20, weight: FontWeight.bold) , 
                CustemCard(
                  text: 'Cheak out', 
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return CheackOutViews() ;
                    })) ;
                  },
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
