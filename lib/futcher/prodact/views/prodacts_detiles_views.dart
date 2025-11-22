import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';

class ProdactsDetilesViews extends StatelessWidget {
  const ProdactsDetilesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, size: 30),
        ), 

      ), 
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12), 
        child: Column(
          children: [ 

             


          ],
        ),
      ),
    );
  }
}
