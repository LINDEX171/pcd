import 'package:pc/features/controllers/onboarding_controller.dart';
import 'package:pc/utils/constants/colors.dart';
import 'package:pc/utils/constants/sizes.dart';
import 'package:pc/utils/device/device_utility.dart';
import 'package:pc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          onDotClicked: (index) => OnBoardingController.instance.dotNavigationClick(index),
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.white : TColors.dark,
              dotHeight: 6),
          controller: controller.pagecontroller,
          // onDotClicked: controller.dotNavigationClick,
          count: 3,
        ));
  }
}
