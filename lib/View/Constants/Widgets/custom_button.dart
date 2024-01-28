import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/View/Constants/Theme/my_colors.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  String text;
  final Function onTap;
  CustomButton({super.key,required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap();
      },
      child: Container(
        height: 50,
        width: 90.w,
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            MyColors.blueDark,
            MyColors.blueLight,
            MyColors.greyCol
          ]),
          borderRadius: BorderRadius.circular(13),
          border: Border.all(
            width: 0.5,
            color: MyColors.greyCol
          )
        ),
        child: Center(
          child: Text(
           text,
            style: GoogleFonts.poppins(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
