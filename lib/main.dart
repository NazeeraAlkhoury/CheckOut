import 'package:checkout/core/utils/app_strings.dart';
import 'package:checkout/core/utils/app_theme.dart';
import 'package:checkout/features/presentaion/views/my_cart_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: const MyCartScreen(),
    );
  }
}
