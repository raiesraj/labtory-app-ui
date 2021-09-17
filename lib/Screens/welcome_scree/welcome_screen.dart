import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labuserinterface/Screens/Components/button.dart';
import 'package:labuserinterface/Screens/welcome_scree/slider///slider_item.dart';
import 'package:labuserinterface/Screens/welcome_scree/slider//slider_and_model.dart';
import 'package:labuserinterface/Screens/welcome_scree/slider//slider_dot.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class WelcomeScreen extends StatefulWidget {
  static String src ='/WelcomeScreen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}
int currentPage =0;
PageController pageController = PageController(
  initialPage: 0,
);

class _WelcomeScreenState extends State<WelcomeScreen> {
  onPageChanged(index){
    setState(() {
      currentPage = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/doctor.png"),fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 280),
                    height: size.height - 300,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Expanded(
                          child: Stack(
                            children: [
                              PageView.builder(
                                itemCount: slideList.length,
                                controller: pageController,
                                onPageChanged: onPageChanged,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (ctx, i) => Slideitem(i),
                              ),
                              Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 120),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        for (int a = 0; a < slideList.length; a++)
                                          if(a == currentPage)
                                            Sliderdot(true)
                                          else
                                            Sliderdot(false)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Column(
                          children: [
                            SignButtons(
                              inputext: 'Sign up with facebook',
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                              ),
                              color: Color(0xff3C5B9B),
                              icon: Icon(Icons.facebook_outlined),
                            ),
                            SizedBox(height: 10,),
                            SignButtons(
                              inputext: 'Sign up with Google',
                              style: GoogleFonts.roboto(),
                              color: Color(0XFFD31B1B),
                              icon: Icon(
                                LineAwesomeIcons.google_plus,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              color: Colors.transparent,
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              height: 45,
                              width: double.infinity,
                              child: OutlinedButton(
                                style: ButtonStyle(
                                    side: MaterialStateProperty.all(
                                        BorderSide(color: Colors.black, width: 1)),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(40)))),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Icon(
                                        Icons.email,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 45,
                                    ),
                                    Text(
                                      "Sign Up With Email",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Divider(
                              thickness: 2,
                              color: Colors.black54,
                            ),
                            SizedBox(height: 5,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an Account?"),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Login",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
