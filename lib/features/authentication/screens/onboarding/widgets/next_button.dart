import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/common/widgets/button/elevated_button.dart';
import 'package:store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:store/utils/constants/sizes.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
      left: 0,
      right: 0,
      bottom: USizes.spaceBtwItems,
      child: UElevatedButton(
        onPressed: controller.nextPage,
        child: Obx(() => Text(controller.currentIndex.value == 2 ? 'Get Started' : 'Next')),
      ),
    );
  }
}
