import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/View/Constants/Widgets/custom_button.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Constants/Widgets/mobile_view.dart';

class TradeIt extends StatelessWidget {
  const TradeIt({super.key});

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
              "<Trade It />",
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
                  MobileView(image: "assets/Apps/TradeIt/2.png", text: "SignIn Screen"),
                  MobileView(image: "assets/Apps/TradeIt/3.png", text: ""),
                  MobileView(image: "assets/Apps/TradeIt/4.png", text: "SignUp Screen"),
                  MobileView(image: "assets/Apps/TradeIt/1.png", text: ""),
                ],
              ),
            ),
            const SizedBox(height: 10,),
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
