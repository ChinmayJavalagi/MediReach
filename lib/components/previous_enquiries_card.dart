import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class PreviousEnquiriesCard extends StatelessWidget {
  final int index;
  PreviousEnquiriesCard({required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("$index. This is the first line of query entered by the user ......" , style: GoogleFonts.manrope(textStyle: kPreviousEnquiriesTextStyle), maxLines: 1, overflow: TextOverflow.ellipsis,),
      ),
    );
  }
}