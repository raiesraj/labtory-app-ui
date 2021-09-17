import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labuserinterface/Screens/welcome_scree/slider//slider_and_model.dart';
class Slideitem extends StatelessWidget {
  final int index;
  Slideitem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            slideList[index].title,
            style: GoogleFonts.roboto(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            slideList[index].description,
            style: GoogleFonts.roboto(
              fontSize: 14,
              color: Colors.red,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
