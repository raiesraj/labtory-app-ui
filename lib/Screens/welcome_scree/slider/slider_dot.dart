import 'package:flutter/material.dart';

class Sliderdot extends StatelessWidget {
  final bool isactive;
  Sliderdot(this.isactive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(
        milliseconds: 150,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      height: 14,
      width: 14,
      decoration: BoxDecoration(
        color: isactive ? Colors.black : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12),),
      ),
    );
  }
}
