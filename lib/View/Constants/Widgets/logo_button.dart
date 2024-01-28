import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LogoButton extends StatelessWidget {
  String image;
  String url;
  LogoButton({super.key,required this.image,required this.url});


  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        launchURL(url);
      },
      child: Center(
        child: Image.asset(image,width: 60,height: 60,),
      ),
    );
  }
}
