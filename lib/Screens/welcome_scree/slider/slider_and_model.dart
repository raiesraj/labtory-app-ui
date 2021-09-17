import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';


class Slide{
  final String title;
  final String description;
  Slide({required this.title,required this.description,});
}

final slideList = [
  Slide(
    title: "Reach More Patients".toUpperCase(),
    description: 'Become one of our partner Laboratories,\n expand your reach  and generate \n more revenue from our patients’'),
  Slide(
      title: "earn as you investigate".toUpperCase(),
      description: 'Become one of our partner Laboratories,\n expand your reach  and generate \n more revenue from our patients’'),
  Slide(
      title: "refer and earn".toUpperCase(),
      description: 'Earn a referral bonus for every Person, Medical\n Doctor, Pharmacy, or Hospital you refer to\n sign up and transact.'),
];
