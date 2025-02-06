import 'package:flutter/material.dart';
import 'package:pc/features/authentication/controllers/onboarding_controller.dart';
import 'package:pc/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:pc/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:pc/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:pc/features/authentication/screens/onboarding/widgets/onboarding_skip_button_page.dart';
import 'package:pc/utils/constants/image_strings.dart';
import 'package:pc/utils/constants/text_strings.dart';
import 'package:get/get.dart';



class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [

          ///onboarding page
          PageView(
            controller: controller.pagecontroller,
            /// no needed to use if you use controller
            onPageChanged: controller.updatePageIndicator,
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
          ),

          ///onboarding dot navigation
          const OnBoardingDotNavigation(),


          ///skip button onboarding
          const OnBoardingSkip(),
          /// Circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}


