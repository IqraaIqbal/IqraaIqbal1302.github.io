import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/View/Screens/home_screen.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 4000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: Builder(
            builder: (context) {
              return Lottie.network('https://lottie.host/4c42ed13-82d9-4692-b0e1-837e97842c62/7e2Airl21v.json');
            }
          ),
        ),
      ),
    );
  }
}
