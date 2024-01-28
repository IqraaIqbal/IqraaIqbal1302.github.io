import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/View/Constants/Theme/light_theme.dart';
import 'View/Constants/Theme/dark_theme.dart';
import 'View/Screens/splash_screen.dart';
import 'package:sizer/sizer.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

   const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: lightTheme,
        dark: darkTheme,
        initial: AdaptiveThemeMode.system,
        builder: (lTheme, dTheme) {
        return Sizer(
            builder: (context, orientation, deviceType) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Portfolio',
                theme: lTheme,
                darkTheme: dTheme,
                home: const SplashScreen(),
            );
          }
        );
      }
    );
  }
}

