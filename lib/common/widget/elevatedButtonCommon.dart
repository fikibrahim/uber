import 'package:flutter/material.dart';

class ElevatedButtonCommon extends StatefulWidget {
  ElevatedButtonCommon(
      {super.key,
      required this.onPressed,
      required this.child,
      required this.backgroundColor,
      required this.width,
      required this.height});

  final VoidCallback onPressed;
  final Widget child;
  final Color backgroundColor;
  final double width;
  final double height;
  double? borderRadius;

  @override
  State<ElevatedButtonCommon> createState() => _ElevatedButtonCommonState();
}

class _ElevatedButtonCommonState extends State<ElevatedButtonCommon> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: widget.onPressed, child: widget.child);
  }
}
