import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/View/Constants/Widgets/project_card.dart';
import 'package:portfolio/View/Screens/apps/inventory.dart';
import 'package:portfolio/View/Screens/apps/trade_it.dart';
import 'package:portfolio/View/Screens/apps/yaseen_app.dart';
import 'package:sizer/sizer.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Projects",
          style:
              GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 7.sp),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProjectCard(
                name: 'Surah Yaseen',
                info:
                    "Created a user-friendly and minimal Flutter app"
                        " with a recite button to access Surah Yaseen from the Quran in PDF format.",
                imagepath: 'assets/Apps/SurahYaseen/logo.png',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const YaseenApp()));
                },
              ),
              ProjectCard(
                name: 'Inventory Management',
                info: "A user-friendly Flutter app to keep track of "
                    "incoming or outgoing items in the inventory and creating bills for it.",
                imagepath: 'assets/Apps/InventoryManagement/logo.png',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Inventory()));
                },
              ),
              ProjectCard(
                name: 'Trade It',
                info:
                    "A minimal app based on barter system (to trade things with things) instead of money,"
                        "\nCurrently In Process ",
                imagepath: 'assets/Apps/TradeIt/bs-logo.png',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const TradeIt()));
                },
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Tap on Any Project to View Details",
          style: GoogleFonts.poppins(fontSize: 5.sp),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
