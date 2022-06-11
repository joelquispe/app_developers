import 'package:appdevelopers/folderdonate/donate.dart';
import 'package:appdevelopers/improvements/alertcommingsoon.dart';
import 'package:appdevelopers/page/developinggames.dart';
import 'package:appdevelopers/page/developingweb.dart';
import 'package:appdevelopers/page/home.dart';
import 'package:appdevelopers/page/lenguagecourse.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget drawerpage(BuildContext con) {
  return Drawer(
    backgroundColor: Color(0xff071e3d),
    child: Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 10),
            width: double.infinity,
            child: Center(
              child: Column(
                children: [
                  ClipOval(
                    child: Image.asset("assets/logo-developers.png", width: 90),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () async {
                      final String url =
                          'https://www.facebook.com/DeveloperSSTeam';
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                    child: Text(
                      "@DeveloperS",
                      style: TextStyle(fontSize: 18, color: Color(0xff21e6c1)),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              
              child: Container(
                child: Column(
                children: [
                  ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.pushReplacementNamed(con, HomePage.route);
                },
                title: Text("Inicio"),
                        ),
                        ListTile(
                leading: Icon(
                  Icons.computer,
                  color: Colors.white,
                ),
                title: Text("Lenguajes de programación"),
                onTap: () {
                  Navigator.pushReplacementNamed(con, LenguageCoursePage.route);
                },
                        ),
                        ListTile(
                leading: Icon(
                  Icons.games,
                  color: Colors.white,
                ),
                title: Text("Desarrollo de videojuegos"),
                onTap: () =>
                    {Navigator.pushReplacementNamed(con, DevelopingGamesPage.route)},
                        ),
                        ListTile(
                leading: Icon(
                  Icons.web,
                  color: Colors.white,
                ),
                title: Text("Desarrollo web"),
                onTap: () =>
                    {Navigator.pushReplacementNamed(con, DevelopingWeb.route)},
                        ),
                        ListTile(
                leading: Icon(
                  Icons.book,
                  color: Colors.white,
                ),
                title: Text("Tutoriales"),
                onTap: () => {
                  showDialog(context: con, builder: (con) => AlertCommingSoon(con))
                },
                        ),
                        ListTile(
                leading: ImageIcon(
                  AssetImage(
                    "assets/icons/database.png",
                  ),
                  color: Colors.white,
                ),
                title: Text("Base de datos"),
                onTap: () => {
                  showDialog(context: con, builder: (con) => AlertCommingSoon(con))
                },
                        ),
                        
                ],
                        ),
              ),),
          ),
          
          
          Container(
            decoration: BoxDecoration(),
            margin: EdgeInsets.only(bottom: 10),
            child: Column(
              children: [
                Text(
                  "Redes sociales",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () async {
                        final String url =
                            'https://www.facebook.com/DeveloperSSTeam';
                        if (await canLaunch(url)) {
                          await launch(url);
                        }
                      },
                      icon: Image.asset("assets/icons/facebook.png"),
                      iconSize: 20,
                    ),
                    IconButton(
                      onPressed: () async {
                        final String url = 'https://twitter.com/developerrss';
                        if (await canLaunch(url)) {
                          await launch(url);
                        }
                      },
                      icon: Image.asset("assets/icons/twitter.png"),
                      iconSize: 20,
                    ),
                    IconButton(
                      onPressed: () async {
                        final String url = 'https://discord.gg/JkkQAWGa85 ';
                        if (await canLaunch(url)) {
                          await launch(url);
                        }
                      },
                      icon: Image.asset("assets/icons/discord.png"),
                      iconSize: 20,
                    ),
                    IconButton(
                      onPressed: () async {
                        final String url =
                            'https://www.youtube.com/channel/UCj2FWnuPMQDm4Rg9z_1mPoA';
                        if (await canLaunch(url)) {
                          await launch(url);
                        }
                      },
                      icon: Image.asset("assets/icons/youtube.png"),
                      iconSize: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
