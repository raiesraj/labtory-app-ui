import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Divider extends StatelessWidget {
  const Divider({
    Key? key, required Color color,  thickness,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 0.9,
      color: Color(0XFF060606),
    );
  }
}
