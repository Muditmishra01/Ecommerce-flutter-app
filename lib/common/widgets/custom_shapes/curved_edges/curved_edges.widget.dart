import 'package:flutter/material.dart';

import 'curved_edges.dart';

class MCurvedEdgeWidget extends StatelessWidget {
  const MCurvedEdgeWidget({
    super.key,this.child,
  });

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(                        ///custom shape banane ke liye hume ye use karenge
      clipper: MCustomCurvedEdges(),
      child: child,
    );
  }
}