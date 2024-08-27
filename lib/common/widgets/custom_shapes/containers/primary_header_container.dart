import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges.widget.dart';
import 'circular_container.dart';

class MPrimaryHeaderContainer extends StatelessWidget {
  const MPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MCurvedEdgeWidget(
      ///ye pehle clippath tha , ise reuse krne ke liye humne extract flutter widget kiya
      child: Container(
        color: MColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: MCircularContainer(
                      backgroundColor: MColors.textWhite.withOpacity(0.1))),
              Positioned(
                  top: 100,
                  right: -300,
                  child: MCircularContainer(
                      backgroundColor: MColors.textWhite.withOpacity(0.1))),
            ],
          ),
        ),
      ),
    );
  }
}