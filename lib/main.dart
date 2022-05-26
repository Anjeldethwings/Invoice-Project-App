import 'package:circle/pages/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCeoacVockAv8zCDIRR2_zuGxfR91oUzCg",
      appId: "1:645619439653:android:f63c1a6eafe6c4cc3447cc",
      messagingSenderId: "Invoice",
      projectId: "invoice-c4ab5",
    ),
  );
  runApp(const CircleUiApp());
}

class CircleUiApp extends StatelessWidget {
  const CircleUiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: LoginPage(),
    );
  }
}
