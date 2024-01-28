import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MobileView extends StatelessWidget {
  String text;
  String image;
  MobileView({super.key,required this.image,required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.poppins(
                  color: Colors.white, fontSize: 7.sp),
            ),
            const SizedBox(height: 50,),
            SizedBox(
                height: 50.h,
                child: Image.asset(image)),

          ],
        ),
      ),
    );
  }
}
