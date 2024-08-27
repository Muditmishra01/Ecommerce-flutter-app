import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/features/authentication/screen/login/login.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              ///image
              Image(
                  image: AssetImage(MImages.deliveredEmailIllustration),
                  width: MHelperFunctions.screenWidth() * 0.6),

              ///title and subtitle
              Text(MTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: MSizes.spaceBtwItems),
              Text('support@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: MSizes.spaceBtwItems),
              Text(MTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: MSizes.spaceBtwSections),

              ///button
              SizedBox(
                  width: double.infinity,                             // full button dene ke liye
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => SuccessScreen(
                        image: MImages.staticSuccessIllustration,
                        title: MTexts.yourAccountCreatedTitle,
                        subtitle: MTexts.yourAccountCreatedSubTitle,
                        onPressed: () => Get.to(() => const LoginScreen()),
                      ),),
                      child: const Text(MTexts.mContinue))),
              const SizedBox(height: MSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: const Text(MTexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
