import 'package:flutter/material.dart';
import 'package:pc/features/controllers/onboarding_controller.dart';
import 'package:pc/utils/constants/sizes.dart';
import 'package:pc/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(onPressed: () {
        return  OnBoardingController.instance.skipPage();
      },  child: const Text("Skip")),
    );
  }
}