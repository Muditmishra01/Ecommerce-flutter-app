import 'package:ecommerce/features/authentication/controllers.onboarding/onboarding_controllers.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;      //work after and during the backent process for getting the instance
    final dark = MHelperFunctions.isDarkMode(context);    // for the mode

    return Positioned(
      bottom: MDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: MSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pagecontroller,            //for moving dots
        onDotClicked: controller.dotNavigationClick,     //for moving the dots
        count: 3,
        effect: ExpandingDotsEffect(activeDotColor: dark? MColors.light: MColors.dark, dotHeight: 6),
      ),
    );
  }
}
