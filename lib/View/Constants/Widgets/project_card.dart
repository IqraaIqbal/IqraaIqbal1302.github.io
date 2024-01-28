import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/View/Constants/Theme/my_colors.dart';
import 'package:sizer/sizer.dart';

class ProjectCard extends StatelessWidget {
  String name;
  String info;
  String imagepath;
  Function onTap;
  ProjectCard({super.key,required this.name,required this.info,required this.imagepath,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: InkWell(
        onTap: (){
          onTap();
        },
        child: SizedBox(
          // height: 30.w,
           width: 35.w,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: MyColors.blueLight,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                        color: Colors.white, fontSize: 6.sp),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 15.w,
                    width: 15.w,
                    child: Image.asset(imagepath,fit: BoxFit.cover,),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      text: "Info:  ",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: Colors.white, fontSize: 6.sp),
                      children: [
                        TextSpan(
                          text: info,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: Colors.white, fontSize: 6.sp),
                        )
                      ]
                    )
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
