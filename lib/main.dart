import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_logout/auth/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAkijLA04gmBB1jDT9Tjbfh3GNGJmCgnjo",
      projectId: "loginlogout-986d1",
      messagingSenderId: "1:494318750724:android:27be0921f5a5b40ea3b951",
      appId: "494318750724",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
