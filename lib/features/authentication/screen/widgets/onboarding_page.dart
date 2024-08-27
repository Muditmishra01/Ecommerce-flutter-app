import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subtitle,
  });

  final String image,title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: MHelperFunctions.screenWidth() * 0.8,
            height: MHelperFunctions.screenHeight() * 0.6,
            image:  AssetImage(image),
          ),
          Text(title,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
          const SizedBox(height: MSizes.spaceBtwItems),
          Text(subtitle,style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}