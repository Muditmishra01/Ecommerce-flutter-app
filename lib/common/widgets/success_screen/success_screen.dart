import 'package:ecommerce/common/style/spacing_styles.dart';
import 'package:ecommerce/features/authentication/screen/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  final String image ,title , subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MSpacingStyle.paddingWithAppBarHeight *2,
          child: Column(
            children: [
              ///image
              Image(image: AssetImage(image),
                  width: MHelperFunctions.screenWidth()*0.6
              ),


              ///title and subtitle
              Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              const SizedBox(height: MSizes.spaceBtwItems),
              Text(subtitle,style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center),
              const SizedBox(height: MSizes.spaceBtwSections),




              ///button
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: const Text(MTexts.mContinue)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
