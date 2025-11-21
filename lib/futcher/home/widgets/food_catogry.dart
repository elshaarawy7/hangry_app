import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';

class FoodCatogry extends StatefulWidget {
  FoodCatogry({super.key, required this.catogry , required this.selectedIndex}); 

   late  int  selectedIndex  = 0 ; 

  final List catogry  ;

  @override
  State<FoodCatogry> createState() => _FoodCatogryState();
}

class _FoodCatogryState extends State<FoodCatogry> { 

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(widget.catogry.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                           widget.selectedIndex = index ;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color:widget.selectedIndex == index
                                  ? AppColor.primery
                                  : Color(0xffF3F4F6),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 27,
                              vertical: 18,
                            ),
                            child: CustemText(
                              text:widget.catogry[index],
                              color:widget.selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              size: 16,
                              weight: FontWeight.bold,
                            ),
                          ),
                        );
                      }),
                    ),
                  );
  }
}