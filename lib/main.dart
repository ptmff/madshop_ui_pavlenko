import 'package:flutter/material.dart';
import 'package:madshop_ui_dmitriev/screens/start_page.dart';
import 'package:madshop_ui_dmitriev/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light(),
      home: const StartPage(),
    );
  }
}