import 'dart:ui';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/View/Constants/Theme/my_colors.dart';
import 'package:portfolio/View/Screens/app_screen.dart';
import 'package:portfolio/View/Screens/contacts.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context) {
    bool switchValue =
        (Theme.of(context).brightness == Brightness.light) ? true : false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "<Iqra Iqbal />",
              style: GoogleFonts.poppins(color: Colors.white),
            ),
          ],
        ),
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              CupertinoIcons.bars,
              color: Colors.white,
            ),
          );
        }),
        centerTitle: true,
      ),
      drawer: customDrawer(switchValue),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Hey There, Welcome to My Space!",
                    style: GoogleFonts.poppins(fontSize: 6.sp),
                  ),
                  SizedBox(
                      height: 10.sp,
                      child: Lottie.network(
                          'https://lottie.host/2107b033-900d-47a7-8d4b-e866c17c3fa6/k3dvUL7v9s.json')),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "I am Iqra Iqbal,",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 7.sp),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DefaultTextStyle(
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 8.sp,
                            color: Theme.of(context).colorScheme.tertiary),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('A Flutter Developer!'),
                          ],
                          totalRepeatCount: 100,
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 8.w,
                    backgroundColor: MyColors.blueLight,
                    child: CircleAvatar(
                      radius: 7.w,
                      backgroundImage: const AssetImage("assets/images/dp.jpg"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Divider(
                height: 1,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                height: 30,
              ),
              AppScreen(),
              const SizedBox(
                height: 30,
              ),
              Divider(
                height: 1,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                height: 30,
              ),
              ContactScreen()
            ],
          ),
        ),
      ),
    );
  }

  customDrawer(switchValue) {
    return Builder(builder: (context) {
      return Drawer(
        backgroundColor:
            Theme.of(context).colorScheme.background.withOpacity(0.75),
        elevation: 0,
        shape: ShapeBorder.lerp(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0)),
          ),
          null,
          0,
        ),
        width: 270,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                //sigmaX is the Horizontal blur
                sigmaX: 4.0,
                //sigmaY is the Vertical blur
                sigmaY: 4.0,
              ),
              //we use this container to scale up the blur effect to fit its
              //  parent, without this container the blur effect doesn't appear.
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.only(topRight: Radius.circular(30)),
                  border: Border.all(color: Colors.white.withOpacity(0.03)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        //begin color
                        Colors.white.withOpacity(0.15),
                        //end color
                        Colors.white.withOpacity(0.05),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 25.0, bottom: 15.0, right: 15.0, left: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "<Iqra Iqbal />",
                    style: GoogleFonts.poppins(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 1,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Icon(
                      CupertinoIcons.sun_max_fill,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    title: Text(
                      "Theme",
                      style: GoogleFonts.poppins(),
                    ),
                    trailing: Switch(
                      inactiveThumbImage:
                          const AssetImage('assets/icons/sun.png'),
                      activeThumbImage:
                          const AssetImage('assets/icons/moon.jpg'),
                      value: switchValue,
                      onChanged: (value) {
                        setState(() {
                          switchValue = !switchValue;
                          (value)
                              ? AdaptiveTheme.of(context).setLight()
                              : AdaptiveTheme.of(context).setDark();
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 1,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Text(
                      "13/02/2003",
                      style: GoogleFonts.poppins(),
                    ),
                    leading: Icon(
                      CupertinoIcons.calendar,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Multan, Pakistan",
                      style: GoogleFonts.poppins(),
                    ),
                    leading: Icon(
                      CupertinoIcons.location_solid,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "BSIT",
                      style: GoogleFonts.poppins(),
                    ),
                    leading: Icon(
                      CupertinoIcons.book_fill,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
