// import 'package:admob_flutter/admob_flutter.dart';
import 'package:appdevelopers/adds/bottom_banner.dart';
import 'package:appdevelopers/developerWeb/courseCss.dart';
import 'package:appdevelopers/developerWeb/courseHtml.dart';
import 'package:appdevelopers/developerWeb/courseadobexd.dart';
import 'package:appdevelopers/improvements/alertcommingsoon.dart';
import 'package:appdevelopers/improvements/drawer.dart';
import 'package:flutter/material.dart';

class DevelopingWeb extends StatefulWidget {
  DevelopingWeb({Key? key}) : super(key: key);
  static String route = "/developingWeb";
  @override
  State<DevelopingWeb> createState() => _DevelopingWebState();
}

class _DevelopingWebState extends State<DevelopingWeb> {
  @override
  Widget build(BuildContext context) {
    //BANNER 04
    return Scaffold(
      backgroundColor: Color(0xff071e3d),
        appBar: AppBar(
          title: Text("Desarrollo Web"),
          backgroundColor: Color(0xff071e3d),
        ),
        bottomNavigationBar: bottomAdmob("ca-app-pub-3302685357796387/6734567180"),
        drawer: drawerpage(context),
        body: Container(
          decoration: BoxDecoration(color: Color(0xff071e3d)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  child: Image(
                                    image:
                                        AssetImage("assets/imgcursos/css.png"),
                                    height: 150,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, CourseCss.route);
                                },
                              ),
                              Text("CSS")
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 5,
                      child: DecoratedBox(
                          decoration: BoxDecoration(color: Colors.red)),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  child: Image(
                                    image:
                                        AssetImage("assets/imgcursos/html.png"),
                                    height: 150,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, CourseHtml.route);
                                },
                              ),
                              Text("HTML")
                            ],
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                 Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  child: Image(
                                    image:
                                        AssetImage("assets/imgcursos/adobexd.png"),
                                    height: 150,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, CourseAdobexd.route);
                                },
                              ),
                              Text("ADOBE XD")
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 5,
                      child: DecoratedBox(
                          decoration: BoxDecoration(color: Colors.red)),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  
                                ),
                               
                              ),
                             
                            ],
                          ),
                        ))
                  ],
                ),
                
                
              ],
            ),
          ),
        ));
  }
}