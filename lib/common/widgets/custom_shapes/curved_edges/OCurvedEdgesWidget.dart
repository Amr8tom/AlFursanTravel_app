import 'package:flutter/material.dart';
import 'curved_edges.dart';

class DCurvedEdgeWidget extends StatelessWidget {
  const DCurvedEdgeWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DCustomCurvedEdges(),
      child: child,
    );
  }
}
