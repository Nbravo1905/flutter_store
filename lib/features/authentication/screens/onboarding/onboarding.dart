import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:store/features/authentication/screens/onboarding/widgets/dot_navigation.dart';
import 'package:store/features/authentication/screens/onboarding/widgets/next_button.dart';
import 'package:store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:store/features/authentication/screens/onboarding/widgets/skip_button.dart';
import 'package:store/utils/constants/images.dart';
import 'package:store/utils/constants/texts.dart';
import 'package:store/utils/constants/sizes.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: [
                OnBoardingPage(
                  title: UTexts.onBoardingTitle1,
                  subtitle: UTexts.onBoardingSubTitle1,
                  animation: UImages.onboarding1Animation,
                ),
                OnBoardingPage(
                  title: UTexts.onBoardingTitle2,
                  subtitle: UTexts.onBoardingSubTitle2,
                  animation: UImages.onboarding2Animation,
                ),
                OnBoardingPage(
                  title: UTexts.onBoardingTitle3,
                  subtitle: UTexts.onBoardingSubTitle3,
                  animation: UImages.onboarding3Animation,
                ),
              ],
            ),

            DotNavigation(),

            NextButton(),

            SkipButton(),
          ],
        ),
      ),
    );
  }
}




