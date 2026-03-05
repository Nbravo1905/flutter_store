import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/device_helpers.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.title, required this.subtitle, required this.animation,
  });

  final String title;
  final String subtitle;
  final String animation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: USizes.defaultSpace,
        left: USizes.defaultSpace,
        top: UDeviceHelper.getAppBarHeight(),
      ),
      child: Column(
        children: [
          Lottie.asset(animation),
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          Text(subtitle, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}