import 'package:flutter/material.dart';
import 'package:pc/utils/constants/image_strings.dart';
import 'package:pc/utils/constants/sizes.dart';
import 'package:pc/utils/constants/text_strings.dart';
import 'package:pc/utils/helpers/helper_functions.dart';
import 'package:pc/utils/theme/custom_themes/text_theme.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
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
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: THelperFunctions.screenWidth() * 0.8,
            height: THelperFunctions.screenHeight() * 0.4,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
