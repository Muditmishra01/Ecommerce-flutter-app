import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges.widget.dart';
import '../../../../utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// can watch video 12
            MPrimaryHeaderContainer(
              child: Column(
                children: [
                  MAppbar()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//change 1
//change 2git status


/// yaha pe MCurvedWidgets jo ki clippath se derived tha use use kiya tha but ///
/// for proper revision see video 12
