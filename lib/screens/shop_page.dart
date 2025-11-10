import 'package:flutter/material.dart';
import 'package:madshop_ui_dmitriev/theme/app_text_styles.dart';
import 'package:madshop_ui_dmitriev/widgets/app_input.dart';
import 'package:madshop_ui_dmitriev/widgets/app_product_card.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 20, automaticallyImplyLeading: false),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Shop', style: AppTextStyles.headlineSmall),
                SizedBox(width: 19),
                Expanded(
                  child: AppInput(placeholder: 'Clothing', isBlue: true),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(12),
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 12,
              childAspectRatio: 0.68,
              children: [
                AppProductCard(
                  imagePath: 'assets/images/example1.png',
                  title: 'Black glasses',
                  price: '3 299 ₽',
                  isFavourite: false,
                ),
                AppProductCard(
                  imagePath: 'assets/images/example2.png',
                  title: 'Skirt "Peach"',
                  price: '4 199 ₽',
                  isFavourite: true,
                ),
                AppProductCard(
                  imagePath: 'assets/images/example3.png',
                  title: 'Shoes',
                  price: '3 699 ₽',
                  isFavourite: false,
                ),
                AppProductCard(
                  imagePath: 'assets/images/example4.png',
                  title: 'White blouse',
                  price: '3 799 ₽',
                  isFavourite: true,
                ),
                AppProductCard(
                  imagePath: 'assets/images/example5.png',
                  title: 'Shopping bags',
                  price: '899 ₽',
                  isFavourite: false,
                ),
                AppProductCard(
                  imagePath: 'assets/images/example6.png',
                  title: 'Black hat',
                  price: '1 099 ₽',
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
