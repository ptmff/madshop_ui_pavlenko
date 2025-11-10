import 'package:flutter/material.dart';
import 'package:madshop_ui_dmitriev/theme/app_colors.dart';
import 'package:madshop_ui_dmitriev/widgets/app_navigation_button.dart';

class AppNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTabSelected;

  const AppNavigation({
    super.key,
    required this.currentIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    final activeColor = AppColors.textBlack;
    final inactiveColor = AppColors.primary;

    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: AppNavigationButton(
              index: 0,
              currentIndex: currentIndex,
              onTap: onTabSelected,
              icon: Icons.home_outlined,
              activeColor: activeColor,
              inactiveColor: inactiveColor,
            ),
          ),

          Expanded(
            child: AppNavigationButton(
              index: 1,
              currentIndex: currentIndex,
              onTap: onTabSelected,
              icon: Icons.favorite_border,
              activeColor: activeColor,
              inactiveColor: inactiveColor,
            ),
          ),

          Expanded(
            child: AppNavigationButton(
              index: 2,
              currentIndex: currentIndex,
              onTap: onTabSelected,
              icon: Icons.shopping_basket_outlined,
              activeColor: activeColor,
              inactiveColor: inactiveColor,
            ),
          ),
        ],
      ),
    );
  }
}