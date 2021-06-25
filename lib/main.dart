import 'package:flutter/material.dart';
// import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/login/login_page.dart';
// import 'package:payflow/modules/splash/splash_page.dart';
import 'package:payflow/shared/themes/app_colors.dart';

void main() {
  runApp(AppFirebase());
}

// ignore: use_key_in_widget_constructors
class AppFirebase extends StatefulWidget {
  @override
  State<AppFirebase> createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: LoginPage(),
    );
  }
}
