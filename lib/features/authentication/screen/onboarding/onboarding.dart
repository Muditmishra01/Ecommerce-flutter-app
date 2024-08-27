import 'package:ecommerce/features/authentication/controllers.onboarding/onboarding_controllers.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/onboarding_dot_navigation.dart';
import '../widgets/onboarding_next_button.dart';
import '../widgets/onboarding_page.dart';
import '../widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());     // this is backend and here we are creating the instance of the onboarding controller

    return Scaffold(
      body: Stack(
        children: [
          ///horizontal scrollable pages
          PageView(
            controller: controller.pagecontroller,               //these two lines after integration of the getx for the backend
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: MImages.onBoardingImage1,
                title: MTexts.onBoardingTitlel,
                subtitle: MTexts.onBoardingSubTitlel,
              ),
              OnBoardingPage(
                image: MImages.onBoardingImage2,
                title: MTexts.onBoardingTitle2,
                subtitle: MTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: MImages.onBoardingImage3,
                title: MTexts.onBoardingTitle3,
                subtitle: MTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          ///skip button
          const OnBoardingSkip(),

          ///dot navigation smoothpageindicator
          OnBoardingDotNavigation(),

          ///circular button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}


