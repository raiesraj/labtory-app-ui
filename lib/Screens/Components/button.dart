import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SignButtons extends StatelessWidget {
      final  TextStyle style;
      final String inputext;
      final Color color;
      final Icon icon;




       const SignButtons({required this.style,required this.inputext, required this.color,required this.icon,});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  primary: color,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: icon,
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Text(inputext, style: style,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
