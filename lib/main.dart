import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hangry_app/futcher/auth/views/profile_view.dart';
import 'package:hangry_app/root.dart';
import 'package:hangry_app/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const HungryApp());
}

class HungryApp extends StatelessWidget {
  const HungryApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      title: 'Hungry App',
      home: Root(),
    );
  }
}
