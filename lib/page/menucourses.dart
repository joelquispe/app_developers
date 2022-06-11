// import 'package:admob_flutter/admob_flutter.dart';
import 'package:appdevelopers/adds/bottom_banner.dart';
import 'package:appdevelopers/improvements/alertcommingsoon.dart';
import 'package:appdevelopers/improvements/drawer.dart';
import 'package:appdevelopers/lenguajesclases/javaclases.dart';
import 'package:appdevelopers/lenguajesclases/javascriptclases.dart';
import 'package:appdevelopers/lenguajesclases/pyclases.dart';
import 'package:appdevelopers/listas/listasclases.dart';
import 'package:appdevelopers/proyectscourses/cmasproyects.dart';
import 'package:appdevelopers/proyectscourses/csharp.dart';
import 'package:appdevelopers/proyectscourses/dartproyects.dart';
import 'package:appdevelopers/proyectscourses/javaproyects.dart';
import 'package:appdevelopers/proyectscourses/javascriptproyects.dart';
import 'package:appdevelopers/proyectscourses/phpproyects.dart';
import 'package:appdevelopers/proyectscourses/pythonproyects.dart';

import 'package:flutter/material.dart';

class MenuCoursePage extends StatefulWidget {
  final int numero;
  MenuCoursePage(this.numero, {Key? key}) : super(key: key);
  static String route = "/MenuCourse";

  @override
  State<MenuCoursePage> createState() => _MenuCoursePageState();
}

class _MenuCoursePageState extends State<MenuCoursePage> {
  @override
  Widget build(BuildContext context) {
    //BANNER 03
    return Scaffold(
      bottomNavigationBar:bottomAdmob("ca-app-pub-3302685357796387/4092053987"), 
        appBar: AppBar(
          title: Text("Carpetas"),
          backgroundColor: Color(0xff071e3d),
        ),
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
                                        AssetImage("assets/icons/folder.png"),
                                    height: 150,
                                  ),
                                ),
                                onTap: () {
                                  if (widget.numero == 1) {
                                    Navigator.pushNamed(
                                        context, JavascriptClassPage.route);
                                  } else if (widget.numero == 0) {
                                    Navigator.pushNamed(
                                        context, JavaClassPage.route);
                                  }else if (widget.numero == 6) {
                                    Navigator.pushNamed(
                                        context, PythonClassPage.route);
                                  } else {
                                    showDialog(
                                        context: context,
                                        builder: (context) =>
                                            AlertCommingSoon(context));
                                  }
                                },
                              ),
                              Text("Cursos")
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
                                        AssetImage("assets/icons/folder.png"),
                                    height: 150,
                                  ),
                                ),
                                onTap: () {
                                  if (widget.numero == 0) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                JavaProyectsClassPage()));
                                  } else if (widget.numero == 1) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                JavascriptProyectsClassPage()));
                                  } else if (widget.numero == 2) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CmasProyectsClassPage()));
                                  } else if (widget.numero == 3) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CsharpProyectsClassPage()));
                                  } else if (widget.numero == 4) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DartProyectsClassPage()));
                                  } else if (widget.numero == 5) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PhpProyectsClassPage()));
                                  } else if (widget.numero == 6) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PythonProyectsClassPage()));
                                  } else if (widget.numero == 7) {
                                    showDialog(
                                        context: context,
                                        builder: (context) =>
                                            AlertCommingSoon(context));
                                  }
                                },
                              ),
                              Text("Proyectos")
                            ],
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ));
  }
}
