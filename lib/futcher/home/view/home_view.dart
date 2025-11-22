import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/futcher/home/widgets/cart_item.dart';
import 'package:hangry_app/futcher/home/widgets/food_catogry.dart';
import 'package:hangry_app/futcher/home/widgets/user_header.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 50),
          child: CustomScrollView(
            slivers: [
              /// header
              SliverAppBar(
                elevation: 0,
                scrolledUnderElevation: 0,
                pinned: true,
                floating: false,
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                toolbarHeight: 200,
                flexibleSpace: Padding(
                  padding:EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 35,
                  ),
                  child: Column(
                    children: [
                      UserHeader(),
                       Gap(20), 
                       SearchBar() , 
                       
                  ]),
                ),
              ),

              SliverToBoxAdapter(
                child: FoodCatogry(
                  catogry: catogry,
                  selectedIndex: selectedIndex,
                ),
              ),

              // gride view
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(childCount: 6, (
                    context,
                    index,
                  ) {
                    return GestureDetector(
                      onTap: () {
                        
                      },
                      child: CartItem(
                        image: 'assets/test/image 6.png',
                        text: 'Cheeseburger ',
                        desc: 'Wendy Burger',
                        rate: '4.8',
                      ),
                    );
                  }),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.65,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
