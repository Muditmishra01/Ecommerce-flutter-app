import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: MSizes.appBarHeight,
    left: MSizes.defaultSpace,
    bottom: MSizes.defaultSpace,
    right: MSizes.defaultSpace,
  );
}