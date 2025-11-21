import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';
import 'package:svg_flutter/svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> { 
   int selectedIndex = 0 ; 
  List catogry = [ 

    'All' , 
    'Combos' , 
    'Sliders' , 
    'clasic'

  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Gap(60),

              /// header
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        "assets/logo/logo.svg",
                        color: AppColor.primery,
                        height: 40,
                      ),

                      Gap(5),

                      CustemText(
                        text: " Hello , Elshaarawy",
                        color: Colors.grey.shade500,
                        size: 20,
                        weight: FontWeight.w500,
                      ),
                    ],
                  ),
                  Spacer(),

                  CircleAvatar(radius: 30),
                ],
              ), 

              Gap(25) , 

              // search bar 

              Material(
                elevation: 2, 
                borderRadius: BorderRadius.circular(15), 
                shadowColor: Colors.grey, 
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'search...' ,  
                    prefix: Icon(CupertinoIcons.search) , 
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15) ,  
                      borderSide: BorderSide(color: Colors.white) , 

                    ) , 
                    focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15) ,  
                      borderSide: BorderSide(color: Colors.white) , 

                    )  , 
                  ),
                ),
              ) ,  

              Gap(20) , 

              // catogry   

              SingleChildScrollView(
                scrollDirection: Axis.horizontal, 
                child: Row(
                  children: List.generate(catogry.length,(index){
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index ;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 8), 
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15) , 
                          color: selectedIndex == index ? AppColor.primery : Color(0xffF3F4F6)  
                        ), 
                        padding: EdgeInsets.symmetric(horizontal: 27 , vertical: 18),
                        child: CustemText(text: catogry[index], 
                        color: selectedIndex == index ? Colors.white : Colors.black , 
                         size: 16, weight: FontWeight.bold)
                      ),
                    );
                  })
                ),
              ) , 

              
            ],
          ),
        ),
      ),
    );
  }
}
