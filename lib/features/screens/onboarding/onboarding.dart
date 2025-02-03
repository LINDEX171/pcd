import 'package:flutter/material.dart';
import 'package:pc/features/screens/onboarding/widgets/onboarding_page.dart';
import 'package:pc/features/screens/onboarding/widgets/skip_button_page.dart';
import 'package:pc/utils/constants/image_strings.dart';
import 'package:pc/utils/constants/sizes.dart';
import 'package:pc/utils/constants/text_strings.dart';
import 'package:pc/utils/device/device_utility.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [


          //skip button onboarding
          SkipButton(),


          //onboarding page
          PageView(
            children: const [
              OnBoardingPage(
                title: TTexts.onBoardingTitle1,
                image: TImages.onBoardingImage1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                title: TTexts.onBoardingTitle2,
                image: TImages.onBoardingImage2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                title: TTexts.onBoardingTitle3,
                image: TImages.onBoardingImage3,
                subtitle: TTexts.onBoardingSubTitle3,
              )
            ],
          )

          //
        ],
      ),
    );
  }
}


