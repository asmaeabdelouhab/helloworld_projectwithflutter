import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({
    super.key,
    required this.onPressed,
    required this.child,
    required this.backgroundColor,
  });

  final Function() onPressed;
  final Widget child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: Colors.white,
        minimumSize: const Size(40, 36),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}