import 'package:ecommerce/features/authentication/controllers.onboarding/onboarding_controllers.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top: MDeviceUtils.getAppBarHeight(),right: MSizes.defaultSpace, child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), child: const Text('Skip'),));
  }
}
