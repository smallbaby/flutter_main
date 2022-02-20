import 'dart:ui';

import 'package:flutter/material.dart';

class Glassmorphism extends StatelessWidget {
  final double blue;
  final double opacity;
  final double radius;
  final Widget child;
  const Glassmorphism({
    Key? key,
    required this.blue,
    required this.opacity,
    required this.radius,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blue, sigmaY: blue),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(opacity),
            borderRadius: BorderRadius.all(Radius.circular(radius)),
            border: Border.all(
              width: 1.5,
              color: Colors.white.withOpacity(opacity),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
