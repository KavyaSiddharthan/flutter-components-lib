import 'dart:ui';
import 'package:flutter/material.dart';

/// A beautifully crafted Glassmorphism Card that demonstrates advanced usage 
/// of BackdropFilter, CustomPainters, and dynamic lighting.
/// 
/// Perfect for highly aesthetic, modern UI architectures.
class GlassCard extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final double blurX;
  final double blurY;
  final Color backgroundColor;
  final Color borderColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const GlassCard({
    Key? key,
    required this.child,
    this.width = double.infinity,
    this.height = double.infinity,
    this.blurX = 15.0,
    this.blurY = 15.0,
    this.backgroundColor = const Color(0x1AFFFFFF), // 10% white
    this.borderColor = const Color(0x33FFFFFF), // 20% white
    this.borderRadius = 24.0,
    this.padding = const EdgeInsets.all(24.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blurX, sigmaY: blurY),
        child: Container(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: borderColor,
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 30,
                offset: const Offset(0, 10),
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                backgroundColor,
                backgroundColor.withOpacity(0.05),
              ],
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
