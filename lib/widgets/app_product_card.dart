import 'package:flutter/material.dart';
import 'package:madshop_ui_dmitriev/theme/app_colors.dart';
import 'package:madshop_ui_dmitriev/theme/app_borders.dart';
import 'package:madshop_ui_dmitriev/theme/app_shadows.dart';
import 'package:madshop_ui_dmitriev/theme/app_text_styles.dart';

class AppProductCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final bool isFavourite;

  const AppProductCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    this.isFavourite = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.textWhite,
            borderRadius: AppBorders.medium,
            boxShadow: [AppShadows.light],
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imagePath,
                    width: double.infinity,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 12,
                left: 12,
                child: Icon(
                  isFavourite ? Icons.favorite : Icons.favorite_border,
                  color: isFavourite ? Colors.red : AppColors.textBlack,
                ),
              ),
              const Positioned(
                bottom: 12,
                left: 12,
                child: Icon(
                  Icons.shopping_basket_outlined,
                  color: AppColors.textBlack,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Text(title, style: AppTextStyles.contextSmall),
        const SizedBox(height: 4),
        Text(price, style: AppTextStyles.contextMediumSmallBold),
      ],
    );
  }
}
