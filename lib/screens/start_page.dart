import 'package:flutter/material.dart';
import 'package:madshop_ui_dmitriev/screens/create_account_page.dart';
import 'package:madshop_ui_dmitriev/widgets/app_image_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  Future<void> _goToCreateAccountPage(BuildContext context) async {
    await Navigator.push<void>(
      context,
      MaterialPageRoute(builder: (_) => CreateAccountPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppImageButton(
          onPressed: () => _goToCreateAccountPage(context),
          imagePath: 'assets/images/logo.png',
          size: 200,
        )
      ),
    );
  }
}