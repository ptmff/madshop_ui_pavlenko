import 'package:flutter/material.dart';
import 'package:madshop_ui_dmitriev/screens/login_page.dart';
import 'package:madshop_ui_dmitriev/theme/app_text_styles.dart';
import 'package:madshop_ui_dmitriev/widgets/app_button.dart';
import 'package:madshop_ui_dmitriev/widgets/app_input.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  Future<void> _goToLoginPage(BuildContext context) async {
    await Navigator.push<void>(
      context,
      MaterialPageRoute(builder: (_) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset('assets/images/bubble1.png'),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Image.asset('assets/images/bubble2.png'),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Create\nAccount',
                      style: AppTextStyles.headlineLarge,
                    ),
                  ),
                  SizedBox(height: 176),
                  AppInput(
                    placeholder: 'Email',
                  ),
                  SizedBox(height: 8),
                  AppInput(
                    placeholder: 'Password',
                    isPassword: true,
                  ),
                  SizedBox(height: 8),
                  AppInput(
                    placeholder: 'Your number',
                    imagePath: 'assets/images/russian_flag.png',
                  ),
                  SizedBox(height: 52),
                  AppButton(
                    label: 'Done',
                    onPressed: () => _goToLoginPage(context),
                  ),
                ],
              ),
            )
          ),
        ],
      )
    );
  }
}