import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';
import '../utils/pallete.dart';

class PreviousEnquiriesCard extends StatelessWidget {
  final int index;
  PreviousEnquiriesCard({required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Pallete.lightGrayColor,
      child: ListTile(
        title: Text("${index+1}. This is the first line of query entered by the user ......" , style: GoogleFonts.manrope(textStyle: kPreviousEnquiriesTextStyle), maxLines: 1, overflow: TextOverflow.ellipsis,),
      ),
    );
  }
}