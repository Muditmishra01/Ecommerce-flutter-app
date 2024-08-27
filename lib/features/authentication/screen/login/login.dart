import 'package:ecommerce/common/style/spacing_styles.dart';
import 'package:ecommerce/features/authentication/screen/login/widgets/login_form.dart';
import 'package:ecommerce/features/authentication/screen/login/widgets/login_header.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/form_divider.dart';
import '../../../../common/widgets/social_button.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = MHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo title and subtitle
              const MLoginHeader(),

              ///form
              const MLoginForm(),
              ///divider
              MFormDivider(dividerText: MTexts.orSignInWith.capitalize!),
              const SizedBox(width: MSizes.spaceBtwSections),


              ///footer
              const MSocialButton(),

            ],
          ),
        ),
      ),
    );
  }
}




