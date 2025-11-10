import 'package:flutter/material.dart';
import 'package:madshop_ui_dmitriev/screens/home_page.dart';
import 'package:madshop_ui_dmitriev/screens/login_page.dart';
import 'package:madshop_ui_dmitriev/theme/app_text_styles.dart';
import 'package:madshop_ui_dmitriev/widgets/app_button.dart';
import 'package:madshop_ui_dmitriev/widgets/app_input.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({super.key});

  Future<void> _goToLoginPage(BuildContext context) async {
    await Navigator.push<void>(
      context,
      MaterialPageRoute(builder: (_) => LoginPage()),
    );
  }

  Future<void> _goToHomePage(BuildContext context) async {
    await Navigator.push<void>(
      context,
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset('assets/images/bubble4.png'),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset('assets/images/bubble3.png'),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 220),
                  Text(
                    'Hello!',
                    style: AppTextStyles.headlineSmall,
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Type your password',
                    style: AppTextStyles.contextMedium,
                  ),
                  SizedBox(height: 126),
                  AppInput(
                    placeholder: 'Password',
                    isPassword: true,
                  ),
                  SizedBox(height: 82),
                  AppButton(
                    label: 'Start',
                    onPressed: () => _goToHomePage(context),
                  ),
                  SizedBox(height: 7),
                  GestureDetector(
                    onTap: () => _goToLoginPage(context),
                    child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        'Cancel',
                        style: AppTextStyles.contextMediumSmall
                      ),
                    )
                  )
                ],
              ),
            )
          ),
        ],
      )
    );
  }
}