import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jakarta_tourist_pass/pages/guest_pages.dart';
import 'package:jakarta_tourist_pass/utils/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: GoogleFonts.inter().fontFamily
      ),
      home: const MySplashScreen()
    );
  }
}

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FlutterSplashScreen.scale(
      childWidget: SizedBox(
        width: size.width,
        height: size.height,
        child: Image.asset("assets/splashscreen.png"),
      ),
      duration: const Duration(milliseconds: 5000),
      animationDuration: const Duration(milliseconds: 1000),
      onAnimationEnd: () => debugPrint("On Scale End"),
      nextScreen: const GuestPages(),
    );
  }
}

