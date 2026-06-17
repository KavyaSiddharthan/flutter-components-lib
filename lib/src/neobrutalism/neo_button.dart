import 'package:flutter/material.dart';

/// A Neobrutalism styled button featuring harsh shadows, bold borders, 
/// and interactive press down animations.
/// 
/// Widely used in modern, avant-garde UI designs.
class NeoButton extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color backgroundColor;
  final Color shadowColor;
  final double borderWidth;
  final double borderRadius;
  final double elevation;

  const NeoButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.backgroundColor = const Color(0xFFE2F163), // Vibrant yellow/green
    this.shadowColor = const Color(0xFF1E1E1E),     // Deep black
    this.borderWidth = 3.0,
    this.borderRadius = 8.0,
    this.elevation = 6.0,
  }) : super(key: key);

  @override
  State<NeoButton> createState() => _NeoButtonState();
}

class _NeoButtonState extends State<NeoButton> with SingleTickerProviderStateMixin {
  bool _isPressed = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() => _isPressed = true);
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() => _isPressed = false);
    widget.onPressed();
  }

  void _handleTapCancel() {
    setState(() => _isPressed = false);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        transform: Matrix4.translationValues(
          _isPressed ? widget.elevation : 0.0,
          _isPressed ? widget.elevation : 0.0,
          0.0,
        ),
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          border: Border.all(
            color: widget.shadowColor,
            width: widget.borderWidth,
          ),
          boxShadow: _isPressed
              ? []
              : [
                  BoxShadow(
                    color: widget.shadowColor,
                    offset: Offset(widget.elevation, widget.elevation),
                    blurRadius: 0,
                  ),
                ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: DefaultTextStyle(
          style: TextStyle(
            color: widget.shadowColor,
            fontWeight: FontWeight.w900,
            fontSize: 18,
            letterSpacing: 1.2,
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
