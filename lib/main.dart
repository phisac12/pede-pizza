// @dart=2.9
import 'package:flutter/material.dart';
import 'package:pizza_facil/splash.dart';
import 'package:pizza_facil/themes/app_colors.dart';
import 'home_page.dart';

void main() {
  runApp(const SplashScreenPage());
}

class MainPizza extends StatelessWidget {
  const MainPizza();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pede Pizza',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: const HomePage(),
    );
  }
}