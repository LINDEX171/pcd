import 'package:flutter/material.dart';
import 'package:pc/utils/constants/sizes.dart';
import 'package:pc/utils/device/device_utility.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(onPressed: () {}, child: const Text("Skip")),
    );
  }
}