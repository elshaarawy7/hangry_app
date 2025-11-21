import 'package:flutter/material.dart';
import 'package:hangry_app/futcher/home/view/home_view.dart';

void main() {
  runApp(const HungryApp());
}

class HungryApp extends StatelessWidget {
  const HungryApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hungry App',
      home: HomeView() , 
    );
  }
}
