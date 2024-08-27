import 'package:ecommerce/common/widgets/form_divider.dart';
import 'package:ecommerce/common/widgets/social_button.dart';
import 'package:ecommerce/features/authentication/screen/signup.widgets/verifyemail.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark  = MHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///title
              Text(MTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: MSizes.spaceBtwSections),

              ///form
              Form(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: MTexts.firstName,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                      const SizedBox(width: MSizes.spaceBtwSections),
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: MTexts.lastName,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: MSizes.spaceBtwInputFields),

                  ///username
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: MTexts.username,
                        prefixIcon: Icon(Iconsax.user_edit)),
                  ),

                  ///email
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: MTexts.email,
                        prefixIcon: Icon(Iconsax.direct)),
                  ),
                  const SizedBox(height: MSizes.spaceBtwInputFields),

                  ///phone no
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: MTexts.phoneNo,
                        prefixIcon: Icon(Iconsax.call)),
                  ),
                  const SizedBox(height: MSizes.spaceBtwInputFields),

                  ///password
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: MTexts.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  const SizedBox(height: MSizes.spaceBtwInputFields),

                  ///terms and condition checkbox
                  Row(
                    children: [
                      SizedBox(width:24,height:24,child: Checkbox(value: true, onChanged: (value){})),
                      const SizedBox(width: MSizes.spaceBtwItems),
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(text: '${MTexts.iAgreeTo} ',style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(text: '${MTexts.privacyPolicy} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark? MColors.white : MColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark? MColors.white : MColors.primary,
                          )),
                          TextSpan(text: '${MTexts.and} ',style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(text: '${MTexts.termsOfUse} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark? MColors.white : MColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark? MColors.white : MColors.primary,
                          )),

                        ]),
                      ),
                    ],
                  ),
                  SizedBox(height: MSizes.spaceBtwSections),

                  ///signup button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => VerifyEmailScreen()), child:  const Text(MTexts.createAccount))),
                ],
              ),
              ),

              ///divider
              MFormDivider(dividerText: MTexts.orSignUpWith.capitalize!),
              SizedBox(height: MSizes.spaceBtwSections),

              ///social button
              const MSocialButton(),
              const SizedBox(height: MSizes.spaceBtwSections),

            ],
          ),
        ),
      ),
    );
  }
}
