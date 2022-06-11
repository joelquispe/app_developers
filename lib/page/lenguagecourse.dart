// import 'package:admob_flutter/admob_flutter.dart';
import 'package:appdevelopers/adds/bottom_banner.dart';
import 'package:appdevelopers/improvements/alertcommingsoon.dart';
import 'package:appdevelopers/improvements/drawer.dart';
import 'package:appdevelopers/lenguajesclases/javaclases.dart';
import 'package:appdevelopers/lenguajesclases/javascriptclases.dart';
import 'package:appdevelopers/page/menucourses.dart';

import 'package:flutter/material.dart';

class LenguageCoursePage extends StatefulWidget {
  LenguageCoursePage({Key? key}) : super(key: key);
  static String route = "/lenguageCourse";
  @override
  State<LenguageCoursePage> createState() => _LenguageCoursePageState();
}

class _LenguageCoursePageState extends State<LenguageCoursePage> {
  @override
  Widget build(BuildContext context) {
    //BANNER 02
    return Scaffold(
      bottomNavigationBar:bottomAdmob("ca-app-pub-3302685357796387/9572483510"), 
        appBar: AppBar(
          title: Text("Lenguajes de Programación"),
          backgroundColor: Color(0xff071e3d),
        ),
        drawer: drawerpage(context),
        body: Container(
          height: double.infinity,
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
                                        AssetImage("assets/imgcursos/java.png"),
                                    height: 150,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MenuCoursePage(0)));
                                },
                              ),
                              Text("JAVA")
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
                                        AssetImage("assets/imgcursos/js.png"),
                                    height: 150,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MenuCoursePage(1)));
                                },
                              ),
                              Text("JAVASCRIPT")
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
                                      image: AssetImage(
                                          "assets/imgcursos/c++.png"),
                                      height: 150,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MenuCoursePage(2)));
                                  }),
                              Text("C++")
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 5,
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
                                      image: AssetImage(
                                          "assets/imgcursos/csharp.png"),
                                      height: 150,
                                    ),
                                  ),
                                  onTap: () {
                                   Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MenuCoursePage(3)));
                                  }),
                              Text("C#")
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
                                      image: AssetImage(
                                          "assets/imgcursos/dart.png"),
                                      height: 150,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MenuCoursePage(4)));
                                  }),
                              Text("DART")
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 5,
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
                                      image: AssetImage(
                                          "assets/imgcursos/php.png"),
                                      height: 150,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MenuCoursePage(5)));
                                  }),
                              Text("PHP")
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
                                      image: AssetImage(
                                          "assets/imgcursos/python.png"),
                                      height: 150,
                                    ),
                                  ),
                                  onTap: () {
                                   Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MenuCoursePage(6)));
                                  }),
                              Text("PYTHON")
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 5,
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
                                      image: AssetImage(
                                          "assets/imgcursos/swift.png"),
                                      height: 150,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MenuCoursePage(7)));
                                  }),
                              Text("SWIFT")
                            ],
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
