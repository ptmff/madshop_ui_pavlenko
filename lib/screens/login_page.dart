import 'package:flutter/material.dart';
import 'package:madshop_ui_dmitriev/screens/create_account_page.dart';
import 'package:madshop_ui_dmitriev/screens/password_page.dart';
import 'package:madshop_ui_dmitriev/theme/app_colors.dart';
import 'package:madshop_ui_dmitriev/theme/app_text_styles.dart';
import 'package:madshop_ui_dmitriev/widgets/app_button.dart';
import 'package:madshop_ui_dmitriev/widgets/app_input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Future<void> _goToCreateAccountPage(BuildContext context) async {
    await Navigator.push<void>(
      context,
      MaterialPageRoute(builder: (_) => CreateAccountPage()),
    );
  }

  Future<void> _goToPasswordtPage(BuildContext context) async {
    await Navigator.push<void>(
      context,
      MaterialPageRoute(builder: (_) => PasswordPage()),
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
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Image.asset('assets/images/bubble5.png'),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset('assets/images/bubble6.png'),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 340),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Login',
                      style: AppTextStyles.headlineLarge,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        'Good to see you back!',
                        style: AppTextStyles.contextMedium,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.favorite,
                        color: AppColors.textBlack,
                        size: 20,
                      )
                    ]
                  ),
                  SizedBox(height: 17),
                  AppInput(
                    placeholder: 'Email'
                  ),
                  SizedBox(height: 37),
                  AppButton(
                    label: 'Login',
                    onPressed: () => _goToPasswordtPage(context),
                  ),
                  SizedBox(height: 7),
                  GestureDetector(
                    onTap: () => _goToCreateAccountPage(context),
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