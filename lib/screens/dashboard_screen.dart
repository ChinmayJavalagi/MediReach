import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medireach/utils/constants.dart';
import 'package:medireach/utils/pallete.dart';

import '../components/dashboard_card.dart';
import '../components/previous_enquiries_card.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool showAll = false;
  int itemCount = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                padding: EdgeInsets.all(0.0),
                onPressed: (){},
                icon: Icon(Icons.menu, color: Pallete.blackColor, size: 40.0),),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text("Hello Chinmay Javalagi", style: GoogleFonts.manrope(textStyle: kHeaderTextStyle),),
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your previous enquiries", style: GoogleFonts.manrope(textStyle: kTextFieldHintTextStyle),),
                  TextButton(onPressed: itemCount > 3
                      ? () {
                    setState(() {
                      showAll = true;
                    });
                  }: null
                      , child: Text("View all", style: GoogleFonts.manrope(textStyle: itemCount>3? kEnabledViewAllButtonTextStyle: kDisabledViewAllButtonTextStyle),)),
                ],
              ),
              Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: showAll? itemCount:3,
                    itemBuilder: (BuildContext context, int index) {
                      return PreviousEnquiriesCard(index: index);
                    },
                  )
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two columns
                ),
                itemCount: 4, // Total number of large cards
                itemBuilder: (BuildContext context, int index) {
                  return DashboardCard(index: index);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

