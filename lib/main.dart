import 'package:bluetooth_controller_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bluetooth Controller',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        // fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: const SplashScreen(),
    );
  }
}
