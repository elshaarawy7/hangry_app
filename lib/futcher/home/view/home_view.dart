import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/home/widgets/cart_item.dart';
import 'package:hangry_app/futcher/home/widgets/food_catogry.dart';
import 'package:hangry_app/futcher/home/widgets/user_header.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  List catogry = ['All', 'Combos', 'Sliders', 'clasic'];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CustomScrollView(
            slivers: [ 
              // appar 
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Gap(60),
            
                  /// header
                UserHeader(),
            
                  Gap(25),
            
                  // search bar
                 SearchBar() , 
            
                  Gap(20),
            
                  // catogry
                  FoodCatogry(catogry:  catogry , selectedIndex:  selectedIndex,)
                  ],
                ),
              ), 
          
          
              // gride view  
          
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 15), 
                sliver: SliverGrid(
                  
                  delegate: SliverChildBuilderDelegate(
                    childCount: 6,
                    (context , index){
                      
                      return CartItem(
                        image: 'assets/test/image 6.png',
                        text: 'Cheeseburger ',
                        desc: 'Wendy Burger',
                        rate: '4.8',
                      );
                    }
                  ), 
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                      childAspectRatio: 0.65,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0
                   )),
              )
            ],
          ),
        )
      ),
    );
  }
} 

/*  
   SingleChildScrollView(
          child: Padding(
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
          
                Gap(25),
          
                // search bar
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(15),
                  shadowColor: Colors.grey,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'search...',
                      prefix: Icon(CupertinoIcons.search),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
          
                Gap(20),
          
                // catogry
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(catogry.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: selectedIndex == index
                                ? AppColor.primery
                                : Color(0xffF3F4F6),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 27,
                            vertical: 18,
                          ),
                          child: CustemText(
                            text: catogry[index],
                            color: selectedIndex == index
                                ? Colors.white
                                : Colors.black,
                            size: 16,
                            weight: FontWeight.bold,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
          
                Gap(30),
          
                // cart items
                GridView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.65,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0
                  ),
                  itemBuilder: (context, index) {
                    return CartItem(
                      image: 'assets/test/image 6.png',
                      text: 'Cheeseburger ',
                      desc: 'Wendy Burger',
                      rate: '4.8',
                    );
                  },
                ),
              ],
            ),
          ),
        ),
 */
