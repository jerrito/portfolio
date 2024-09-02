import 'package:flutter/material.dart';
import 'package:portfolio/core/size.dart';

class Button extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const Button({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: Sizes.width(
              context,
              0.01,
            ),
            vertical: Sizes.height(context, 0.005)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Sizes.height(
              context,
              0.01,
            ),
          ),
          color: Colors.amber.shade300,
        ),
        child: Center(
          child: Text(label),
        ),
      ),
    );
  }
}
