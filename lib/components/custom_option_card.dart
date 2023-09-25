import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class OptionCard extends StatefulWidget {
  const OptionCard({Key? key}) : super(key: key);

  @override
  State<OptionCard> createState() => _OptionCardState();
}

class _OptionCardState extends State<OptionCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // adds rounded corners
      ),
      child: Column(
        children: [
          Icon(Icons.close_rounded,color: Colors.red,size: 40,),
          Text('NO',style: GoogleFonts.manrope(
              textStyle: kOptionHeaderStyle
          ),)
        ],
      ),
    );
  }
}
