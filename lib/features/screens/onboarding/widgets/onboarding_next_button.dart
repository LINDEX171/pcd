import 'package:flutter/material.dart';
import 'package:pc/features/controllers/onboarding_controller.dart';
import 'package:pc/utils/constants/colors.dart';
import 'package:pc/utils/constants/sizes.dart';
import 'package:pc/utils/device/device_utility.dart';
import 'package:pc/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? TColors.primary : Colors.black,
          ),

          child: const Icon(Icons.arrow_forward_ios_rounded)),
    );
  }
}
