import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:multi_store_web_app/views/buyers/auth/register_screen.dart';
import 'package:multi_store_web_app/views/buyers/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid ? await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyAJ8RNOqnV8bxGlC9xlhjLRNRjIOa5OaZk",
        appId: "1:280403908884:android:a423f8a4c49d55e1520a01",
        messagingSenderId: "280403908884",
        projectId: "multi-store-admin-01",
      storageBucket: "gs://multi-store-admin-01.appspot.com"
    )
  ) : await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Brand-Bold',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow.shade900),
        useMaterial3: false,
      ),
      home: RegisterScreen(), // MainScreen(),
    );
  }
}