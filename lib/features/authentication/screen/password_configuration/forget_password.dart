import 'package:ecommerce/features/authentication/screen/password_configuration/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(MSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///heading
            Text(MTexts.forgetPassword,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
            const SizedBox(height: MSizes.spaceBtwItems),
            Text(MTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
            const SizedBox(height: MSizes.spaceBtwSections*2),

            ///textform field
            TextFormField(
              decoration: const InputDecoration(labelText: MTexts.email,prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: MSizes.spaceBtwSections),

            ///submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () => Get.off(()=> const ResetPassword()), child: const Text(MTexts.submit)),
            )

          ],
        ),
      ),
    );
  }
}
