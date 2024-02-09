import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/WelcomeGif.gif',
            width: 200.0,
            height: 200.0,
            fit: BoxFit.cover,
          ),
          Text(
            'Welcome!',
            style: GoogleFonts.lilitaOne(fontSize: 50),
          ),
          Text(
            user.email!,
            style: GoogleFonts.lilitaOne(fontSize: 30, color: Colors.purple),
          ),
          SizedBox(height: 30),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            color: Colors.purple.shade400,
            child: Text(
              'Sign Out',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      )),
    );
  }
}
