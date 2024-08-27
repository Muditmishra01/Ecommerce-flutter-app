

import 'package:ecommerce/features/authentication/screen/password_configuration/forget_password.dart';
import 'package:ecommerce/features/authentication/screen/signup.widgets/signup.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class MLoginForm extends StatelessWidget {
  const MLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: MSizes.spaceBtwSections),
        child: Column(
          children: [
            ///email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: MTexts.email),
            ),
            const SizedBox(height: MSizes.spaceBtwInputFields),

            ///password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: MTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: MSizes.spaceBtwInputFields /2),

            ///Remember me and forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(MTexts.rememberMe),
                  ],
                ),
                ///forget password
                TextButton(onPressed: ()=> Get.to(()=> const ForgetPassword()), child: const Text(MTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: MSizes.spaceBtwSections),

            ///sign in button
            SizedBox(width: double.infinity ,child: ElevatedButton(onPressed: () =>Get.to(()=> const NavigationMenu()), child: Text(MTexts.signIn))),
            const SizedBox(height: MSizes.spaceBtwItems),
            ///create account button
            SizedBox(width: double.infinity ,child: OutlinedButton(onPressed: () =>Get.to(()=> const SignupScreen()), child: Text(MTexts.createAccount))),
          ],
        ),
      ),
    );
  }
}
