import 'package:flutter/material.dart';
import 'package:madshop_ui_dmitriev/screens/cart_page.dart';
import 'package:madshop_ui_dmitriev/screens/favourite_page.dart';
import 'package:madshop_ui_dmitriev/screens/shop_page.dart';
import 'package:madshop_ui_dmitriev/widgets/app_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeWithBottomNavState();
}

class _HomeWithBottomNavState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [ShopPage(), FavouritePage(), CartPage()];

  void _onTabSelected(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: SafeArea(
        child: AppNavigation(
          currentIndex: _currentIndex,
          onTabSelected: _onTabSelected,
        ),
      ),
    );
  }
}
