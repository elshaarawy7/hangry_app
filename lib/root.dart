import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/auth/views/profile_view.dart';
import 'package:hangry_app/futcher/cart/views/cart_view.dart';
import 'package:hangry_app/futcher/home/view/home_view.dart';
import 'package:hangry_app/futcher/order_history/views/order_histoty_view.dart';

class Root extends StatefulWidget {
   Root({super.key});

  @override
  State<Root> createState() => _RootState(); 
  
}

class _RootState extends State<Root> {
  late  PageController? controller = PageController() ; 
  late  List<Widget> screans; 
  int curentScrean = 0 ;
  @override
  void initState(){
    screans = [
    HomeView() , 
    CartView() , 
    OrderHistotyView(), 
    ProfileView() , 
  ]; 
  controller = PageController(initialPage: curentScrean) ;
    super.initState() ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller:  controller ,
        children:screans ,
        physics: NeverScrollableScrollPhysics(),
        
      ), 

      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10), 
        decoration: BoxDecoration(
          color: AppColor.primery , 
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12) , 
            topRight: Radius.circular(12) , 
          ) , 
        ),
        child: BottomNavigationBar(

          backgroundColor: Colors.transparent , 
          elevation: 0, 
          type: BottomNavigationBarType.fixed, 
          selectedItemColor: Colors.white, 
          unselectedItemColor: Colors.grey.shade700, 
          currentIndex: curentScrean,
          onTap: (value) {
            setState(() {
              curentScrean =  value ;
            }); 

            controller?.jumpToPage(curentScrean);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home) , 
              label: "Home" , 
            ) ,  
        
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart) , 
              label: "Cart" , 
            ) , 
        
            BottomNavigationBarItem(
              icon: Icon(Icons.local_restaurant) , 
              label: "Home" , 
            ) ,
        
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled) , 
              label: "profile" , 
            ) ,
          ],
        ),
      ),
      
    );
  }
}