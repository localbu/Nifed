import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nifed/pages/home/home_screen.dart';
import 'package:nifed/pages/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        HomeScreen.routeName : (context) => HomeScreen()
      },
    );
  }
}
