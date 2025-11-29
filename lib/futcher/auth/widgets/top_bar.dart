import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context) ;
                }, icon: Icon(Icons.arrow_back , color: Colors.white, size: 25,) 
                
                ) ,  

                Icon(Icons.settings , color: Colors.white, size: 25,) , 


              ],
            ) ; 
  }
}