import 'package:flutter/material.dart';

class AppNavigationButton extends StatelessWidget {
  final int index;
  final int currentIndex;
  final ValueChanged<int> onTap;
  final IconData icon;
  final Color activeColor;
  final Color inactiveColor;

  const AppNavigationButton({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.onTap,
    required this.icon,
    required this.activeColor,
    required this.inactiveColor,
  });

  bool get _isActive => index == currentIndex;

  @override
  Widget build(BuildContext context) {
    final color = _isActive ? activeColor : inactiveColor;

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () => onTap(index),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 26, color: color),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              height: 3,
              width: _isActive ? 20 : 0,
              decoration: BoxDecoration(
                color: _isActive ? activeColor : Colors.transparent,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}