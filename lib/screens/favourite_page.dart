import 'package:flutter/material.dart';
import 'package:madshop_ui_dmitriev/theme/app_text_styles.dart';
import 'package:madshop_ui_dmitriev/widgets/app_product_card.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 20, automaticallyImplyLeading: false),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Favourite', style: AppTextStyles.headlineSmall),
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(12),
              crossAxisCount: 2,
              childAspectRatio: 0.68,
              crossAxisSpacing: 12,
              children: const [
                AppProductCard(
                  imagePath: 'assets/images/example6.png',
                  title: 'Black hat',
                  price: '3 299 ₽',
                  isFavourite: true,
                ),
                AppProductCard(
                  imagePath: 'assets/images/example4.png',
                  title: 'White blouse',
                  price: '3 699 ₽',
                  isFavourite: true,
                ),
                AppProductCard(
                  imagePath: 'assets/images/example2.png',
                  title: 'Skirt "Peach"',
                  price: '899 ₽',
                  isFavourite: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
