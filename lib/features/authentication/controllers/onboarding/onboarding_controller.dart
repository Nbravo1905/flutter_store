import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {

  static OnBoardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  RxInt currentIndex = 0.obs;


  void updatePageIndicator(int index) {
    currentIndex.value = index;
  }

  void dotNavigationClick(int index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if(currentIndex.value == 2) return;

    currentIndex.value++;
    pageController.jumpToPage(currentIndex.value);
  }

  void skipPage() {
    currentIndex.value = 2;
    pageController.jumpToPage(currentIndex.value);
  }

}