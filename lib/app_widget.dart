import 'package:flutter/material.dart';
import 'modules/login/login_page.dart';
import 'shared/themes/app_colors.dart';

// ignore: use_key_in_widget_constructors
class AppWidget extends StatelessWidget {
  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: LoginPage(),
    );
  }
}
