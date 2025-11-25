import 'package:flutter/material.dart';
import 'package:hangry_app/futcher/cart/widgets/cart_item.dart';

class ListViewBuilderCartItem extends StatefulWidget {
  const ListViewBuilderCartItem({super.key}); 

  @override
  State<ListViewBuilderCartItem> createState() => _ListViewBuilderCartItemState();
}

class _ListViewBuilderCartItemState extends State<ListViewBuilderCartItem> { 
  final int  itemCount = 6 ;
  late List<int> quintets ;  

  @override 
  void initState(){
    quintets = List.generate(20, (_)=>1) ;
    super.initState();
  }
  void onAdd(int index){
    setState(() {
       quintets[index]++;
    });
  } 

  void onRemove(int index){
    setState(() {
      if(quintets[index]> 1){
        quintets[index]-- ;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: CartItemOrder(
            imagePath: 'assets/test/image 6.png',
            title: 'Hamburger ',
            subtitle: 'Veggie Burger',
            quantity: quintets[index],
            onAdd: ()=> onAdd(index),
            onRemove: ()=> onRemove(index),
            onDelete: () {},
          ),
        );
      },
    );
  }
}
