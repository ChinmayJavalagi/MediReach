import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class OptionCard extends StatefulWidget {
  final IconData icon;
  final String text;
  final Color color;
  OptionCard({required this.icon,required this.text,required this.color});

  @override
  State<OptionCard> createState() => _OptionCardState();
}

class _OptionCardState extends State<OptionCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: widget.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // adds rounded corners
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Icon(widget.icon,color: Colors.white,size: 40,),
            SizedBox(height: 10,),
            Text(widget.text,style: GoogleFonts.manrope(
                textStyle: kOptionHeaderStyle
            ),)
          ],
        ),
      ),
    );
  }
}
