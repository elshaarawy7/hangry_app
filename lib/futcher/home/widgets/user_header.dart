import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hangry_app/core/constants/app_color.dart';
import 'package:hangry_app/futcher/shared/custem_text.dart';
import 'package:svg_flutter/svg.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
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
                  );
  }
}