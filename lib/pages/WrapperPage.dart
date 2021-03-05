import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WrapperPage extends StatefulWidget {
  @override
  _WrapperPageState createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  bool logoOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Center(
              child: AnimatedOpacity(
                opacity: (logoOn) ? 1.0 : 0.2,
                duration: Duration(
                  milliseconds: (logoOn) ? 80 : 10,
                ),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    (logoOn) ? Colors.deepOrange : Colors.white,
                    BlendMode.modulate,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            logoOn = !logoOn;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(
                            milliseconds: (logoOn) ? 10 : 100,
                          ),
                          child: Image.asset(
                            "images/logo1.png",
                            // height: 200,
                            fit: BoxFit.cover,
                          ),
                          width: (logoOn) ? 160 : 150,
                        ),
                      ),
                      AnimatedOpacity(
                        duration: Duration(
                          milliseconds: (logoOn) ? 400 : 10,
                        ),
                        opacity: (logoOn) ? 1.0 : 0.0,
                        child: AnimatedContainer(
                          width: 200,
                          duration: Duration(
                            milliseconds: 200,
                          ),
                          child: Container(
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "lwazi",
                                    style: GoogleFonts.oswald(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 30,
                                    ),
                                  ),
                                  AnimatedContainer(
                                    duration: Duration(
                                      milliseconds: (logoOn) ? 200 : 400,
                                    ),
                                    width: (logoOn) ? 0 : 8,
                                  ),
                                  Text(
                                    "N",
                                    style: GoogleFonts.oswald(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
