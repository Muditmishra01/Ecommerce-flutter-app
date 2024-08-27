import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              ///image with 60% screen width
              Image(image:const AssetImage(MImages.deliveredEmailIllustration),
                  width: MHelperFunctions.screenWidth()*0.6
              ),


              ///title and subtitle
              Text(MTexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              const SizedBox(height: MSizes.spaceBtwItems),
              Text(MTexts.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center),
              const SizedBox(height: MSizes.spaceBtwSections),




              ///button
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(MTexts.done)),
              ),
              const SizedBox(height: MSizes.spaceBtwItems),

              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(MTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
