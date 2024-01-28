import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/View/Constants/Widgets/logo_button.dart';
import 'package:sizer/sizer.dart';

class ContactScreen extends StatelessWidget {
   ContactScreen({super.key});

  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'iqraaiqbal1302@gmail.com', // Replace with your email address
  );

  @override
  Widget build(BuildContext context) {
    return   Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Contact Me",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400, fontSize: 7.sp),
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoButton(image: "assets/icons/github.png", url: 'https://github.com/IqraaIqbal',),
            const SizedBox(width: 20,),
            LogoButton(image: "assets/icons/in.png", url: 'https://www.linkedin.com/in/iqraa-iqbal-74aa5624b',),
            const SizedBox(width: 20,),
            LogoButton(image: "assets/icons/gmail.png", url: emailLaunchUri.toString(),),
            const SizedBox(width: 20,),
            LogoButton(image: "assets/icons/whatsapp.png", url: 'https://api.whatsapp.com/send?phone=923188424746',)
          ],
        ),
      ],
    );
  }
}
