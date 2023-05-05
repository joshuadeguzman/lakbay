import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;

  const CardItem({
    super.key,
    required this.child,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: child,
    );
  }
}
