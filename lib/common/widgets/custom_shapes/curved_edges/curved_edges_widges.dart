import 'package:flutter/material.dart';
import 'curved_edges.dart';

class TCurvedEdgesWiget extends StatelessWidget {
  const TCurvedEdgesWiget({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCustomCurvedEdges(), child: child);
  }
}