import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WrapperPage extends StatefulWidget {
  @override
  _WrapperPageState createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  bool logoOn = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 200),
                      opacity: 1.0,
                      // (settings.dialog) ? 1.0 : 0.0,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                                child: AnimatedContainer(
                                  duration: Duration(
                                    milliseconds: 200,
                                  ),
                                  // (settings.dialog) ? 50 : 200,),
                                  width: 400,
                                  // (settings.dialog) ? 400 : 0,
                                  height: 184,
                                  color: Colors.black54,
                                  child: Container(
                                    width: 215,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: 156,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(00),
                                                  ),
                                                  child: TextFormField(
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                    controller: nameController,
                                                    onChanged: (value) {},
                                                    autocorrect: true,
                                                    maxLines: 1,
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      fillColor: Colors.black45,
                                                      filled: true,
                                                      hintText: 'First name..',
                                                      hintStyle: TextStyle(
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Container(
                                                width: 200,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                  ),
                                                  child: TextFormField(
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                    controller: emailController,
                                                    onChanged: (value) {},
                                                    autocorrect: true,
                                                    maxLines: 1,
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      fillColor: Colors.black45,
                                                      filled: true,
                                                      hintText: 'Email..',
                                                      hintStyle: TextStyle(
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                            ),
                                            child: TextFormField(
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                              controller: commentController,
                                              onChanged: (value) {},
                                              autocorrect: true,
                                              maxLines: 4,
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                fillColor: Colors.black45,
                                                filled: true,
                                                hintText:
                                                    'Any new ideas? What\'s on your mind?',
                                                hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
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
          ],
        ),
      ),
    );
  }
}
