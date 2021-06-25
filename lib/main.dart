import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:payflow/app_widget.dart';
// import 'package:payflow/modules/home/home_page.dart';
//import 'package:payflow/modules/login/login_page.dart';
// import 'package:payflow/modules/splash/splash_page.dart';
//import 'package:payflow/shared/themes/app_colors.dart';

void main() {
  runApp(AppFirebase());
}

// ignore: use_key_in_widget_constructors
class AppFirebase extends StatefulWidget {
  @override
  State<AppFirebase> createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          // ignore: prefer_const_constructors
          return Material(
            // ignore: prefer_const_constructors
            child: Center(
              // ignore: prefer_const_constructors
              child: Text(
                "Não foi possivel inicializar o firebase",
                textDirection: TextDirection.ltr,
              ),
            ),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          return AppWidget();
        }
        // ignore: prefer_const_constructors
        return Material(
            // ignore: prefer_const_constructors
            child: Center(
          // ignore: prefer_const_constructors
          child: CircularProgressIndicator(),
        ));
      },
    );
  }
}
