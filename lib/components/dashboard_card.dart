import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medireach/screens/chatbot_screen.dart';
import 'package:medireach/screens/login_screen.dart';
import 'package:medireach/url_launcher.dart';

import '../utils/constants.dart';
import '../utils/pallete.dart';

List<String> src = [
  "assets/images/chatbot_message.png",
  "assets/images/boy_online_doctor.png",
  "assets/images/notebook.png",
  "assets/images/clock.png"
];
List<String> title = [
  "Talk with AI",
  "Consult Doctor",
  "Generate Prescription",
  "Your History"
];
List route = [
  ChatBotScreen.id,
  UrlLauncher.id,
];

class DashboardCard extends StatelessWidget {
  final int index;

  DashboardCard({
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(index!=1){
          Navigator.pushNamed(context, route[index]);
        }else{
            UrlLauncher launcher = UrlLauncher();
            String url = 'https://esanjeevani.mohfw.gov.in/#/patient/signin';
            final Uri uri = Uri.parse('https://esanjeevani.mohfw.gov.in/#/patient/signin');
            launcher.urllauncher(url);
        }

      },
      child: Card(
        color: Pallete.lightGrayColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(src[index]),
            Text(
              title[index],
              style:
                  GoogleFonts.manrope(textStyle: kPreviousEnquiriesTextStyle),
            ),
          ],
        ),
      ),
    );
  }
}
