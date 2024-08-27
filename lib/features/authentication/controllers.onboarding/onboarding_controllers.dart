import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screen/login/login.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  ///variables
  final pagecontroller = PageController();
  Rx<int> currentPageIndex = 0.obs;

  ///update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  ///jump to specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pagecontroller.jumpTo(index);
  }

  ///update current index and jump to next page
  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.offAll(const LoginScreen());
    }
    else{
      int page = currentPageIndex.value + 1;
      pagecontroller.jumpToPage(page);
    }
  }

  /// update current index and jump to last page
  void skipPage(){
    currentPageIndex.value = 2;
    pagecontroller.jumpToPage(2);
  }

}