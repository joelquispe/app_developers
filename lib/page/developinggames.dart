// import 'package:admob_flutter/admob_flutter.dart';
import 'package:appdevelopers/adds/bottom_banner.dart';
import 'package:appdevelopers/developergames/coursegodot.dart';
import 'package:appdevelopers/improvements/drawer.dart';
import 'package:flutter/material.dart';

class DevelopingGamesPage extends StatefulWidget {
  DevelopingGamesPage({Key? key}) : super(key: key);
  static String route = "/developingGames";
  @override
  State<DevelopingGamesPage> createState() => _DevelopingGamesPageState();
}

class _DevelopingGamesPageState extends State<DevelopingGamesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff071e3d),
        appBar: AppBar(
          title: Text("Desarrollo de videojuegos"),
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
                                        AssetImage("assets/imgcursos/godot.png"),
                                    height: 150,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, CourseGodot.route);
                                },
                              ),
                              Text("GODOT")
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
                SizedBox(
                  height: 5,
                ),
                
                
                
              ],
            ),
          ),
        ));
  }
}