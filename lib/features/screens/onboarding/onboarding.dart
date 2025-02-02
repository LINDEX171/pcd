import 'package:flutter/material.dart';
import 'package:pc/utils/constants/image_strings.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image(image: AssetImage(TImages.onBoardingImage1),),
          SizedBox(height: 100),
          Text("Onboarding for Pc",style: TextStyle(fontSize: 40,color: Colors.red ),),
        ],)
      ],),
    );
  }
}
