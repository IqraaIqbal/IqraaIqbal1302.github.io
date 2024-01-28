import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/View/Constants/Widgets/custom_button.dart';
import 'package:portfolio/View/Constants/Widgets/mobile_view.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class YaseenApp extends StatelessWidget {
  const YaseenApp({super.key});

  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "<Surah Yaseen />",
              style: GoogleFonts.poppins(color: Colors.white),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MobileView(image: "assets/Apps/SurahYaseen/1.png", text: "Splash Screen"),
                  MobileView(image: "assets/Apps/SurahYaseen/2.png", text: "Home Screen"),
                  MobileView(image: "assets/Apps/SurahYaseen/3.png", text: "Drawer"),
                  MobileView(image: "assets/Apps/SurahYaseen/4.png", text: "Surah Yaseen"),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Swipe to See All Pages ",
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontSize: 5.sp),
                ),
                Icon(CupertinoIcons.arrow_right,size: 5.sp,)
              ],
            ),
            const SizedBox(height: 30,),
            CustomButton(text: "SourceCode on Github", onTap: (){
              launchURL("https://github.com/IqraaIqbal/Surah-Yaseen");
            }),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
