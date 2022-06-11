// import 'package:admob_flutter/admob_flutter.dart';
import 'dart:io';

import 'package:appdevelopers/adds/bottom_banner.dart';
import 'package:appdevelopers/improvements/drawer.dart';
import 'package:appdevelopers/listas/listasclases.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  static String route = "/home";
  @override
  State<HomePage> createState() => _HomePageState();
}
const int maxFailedLoadAttempts = 3;
class _HomePageState extends State<HomePage> {
  // AdmobInterstitial? interstitialAd;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   interstitialAd = AdmobInterstitial(
  //       adUnitId: "ca-app-pub-3302685357796387/7344011665",
  //       listener: (AdmobAdEvent event, Map<String, dynamic>? args) {
  //         if (event == AdmobAdEvent.closed) {
  //           interstitialAd!.load();
  //         }
  //       });
  //   interstitialAd!.load();
  // }

  

  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    double widthlogo = 0;
    if (shortestSide < 600) {
      widthlogo = 60;
    } else {
      widthlogo = 110;
    }
    
    Size size = MediaQuery.of(context).size;
    //BANNER 01
    return Scaffold(
        bottomNavigationBar:  bottomAdmob("ca-app-pub-3302685357796387/7344011665"),
        appBar: AppBar(backgroundColor: Color(0xff071e3d)),
        drawer: drawerpage(context),
        body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(color: Color(0xff071e3d)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      CircleAvatar(
                        radius: widthlogo,
                        backgroundImage:
                            AssetImage("assets/logo-developers.png"),
                      ),
                      SizedBox(height: 30.0),
                      ElevatedButton(
                        onPressed: () async {
                          final String url = 'https://youtu.be/jz1ipZaLKBU';
                          if (await canLaunch(url)) {
                            await launch(url,forceSafariVC: false);
                          }
                        },
                        child: Text(
                          "Programación desde 0",
                          style: TextStyle(color: Color(0xff071e3d)),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffcdffeb)),
                      ),
                      TextButton(
                          onPressed: () async {
                            final String url =
                                'https://www.facebook.com/DeveloperSSTeam';
                            if (await canLaunch(url)) {
                              await launch(url,forceSafariVC: false);
                            }
                          },
                          child: Text("@DeveloperS",
                              style: TextStyle(
                                  fontSize: 22, color: Color(0xff21e6c1)))),
                      SizedBox(height: 20.0)
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  width: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Ultimas clases subidas : ",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start)),
                      Container(
                        height: 120,
                        padding: EdgeInsets.all(1),
                        margin: EdgeInsets.all(10),
                        child: Center(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              GestureDetector(
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxHeight: 220.0,
                                    minHeight: 120.0,
                                  ),
                                  padding: EdgeInsets.all(2.5),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 5.0,
                                            spreadRadius: 0.5,
                                            offset: Offset(0.5, 0.5))
                                      ]),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    child: Image(
                                      image: AssetImage(Java[7].imagen),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                onTap: () async {
                                  final String url = Java[7].link;
                                  if (await canLaunch(url)) {
                                    await launch(url,forceSafariVC: false);
                                  }
                                },
                              ),
                              SizedBox(width: 20),
                              GestureDetector(
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxHeight: 220.0,
                                    minHeight: 120.0,
                                  ),
                                  padding: EdgeInsets.all(2.5),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 5.0,
                                            spreadRadius: 0.5,
                                            offset: Offset(0.5, 0.5))
                                      ]),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    child: Image(
                                      image: AssetImage(Java[6].imagen),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                onTap: () async {
                                  final String url = Java[6].link;
                                  if (await canLaunch(url)) {
                                    await launch(url,forceSafariVC: false);
                                  }
                                },
                              ),
                              SizedBox(width: 20),
                              GestureDetector(
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxHeight: 220.0,
                                    minHeight: 120.0,
                                  ),
                                  padding: EdgeInsets.all(2.5),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 5.0,
                                            spreadRadius: 0.5,
                                            offset: Offset(0.5, 0.5))
                                      ]),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    child: Image(
                                      image: AssetImage(Javascript[12].imagen),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                onTap: () async {
                                  final String url = Javascript[12].link;
                                  if (await canLaunch(url)) {
                                    await launch(url,forceSafariVC: false);
                                  }
                                },
                              ),
                              SizedBox(width: 20),
                              GestureDetector(
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxHeight: 220.0,
                                    minHeight: 120.0,
                                  ),
                                  padding: EdgeInsets.all(2.5),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 5.0,
                                            spreadRadius: 0.5,
                                            offset: Offset(0.5, 0.5))
                                      ]),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    child: Image(
                                      image: AssetImage(Javascript[11].imagen),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                onTap: () async {
                                  final String url = Javascript[11].link;
                                  if (await canLaunch(url)) {
                                    await launch(url,forceSafariVC: false);
                                  }
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Clases recomendadas : ",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start)),
                      Container(
                        height: 120,
                        padding: EdgeInsets.all(1),
                        margin: EdgeInsets.all(10),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            GestureDetector(
                              child: Container(
                                padding: EdgeInsets.all(2.5),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 5.0,
                                          spreadRadius: 0.5,
                                          offset: Offset(0.5, 0.5))
                                    ]),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: Image(
                                    image: AssetImage(Java[0].imagen),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              onTap: () async {
                                final String url = Java[0].link;
                                if (await canLaunch(url)) {
                                  await launch(url,forceSafariVC: false);
                                }
                              },
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                              child: Container(
                                padding: EdgeInsets.all(2.5),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 5.0,
                                          spreadRadius: 0.5,
                                          offset: Offset(0.5, 0.5))
                                    ]),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: Image(
                                    image: AssetImage(Java[1].imagen),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              onTap: () async {
                                final String url = Java[1].link;
                                if (await canLaunch(url)) {
                                  await launch(url,forceSafariVC: false);
                                }
                              },
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                              child: Container(
                                padding: EdgeInsets.all(2.5),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 5.0,
                                          spreadRadius: 0.5,
                                          offset: Offset(0.5, 0.5))
                                    ]),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: Image(
                                    image: AssetImage(Javascript[0].imagen),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              onTap: () async {
                                final String url = Javascript[0].link;
                                if (await canLaunch(url)) {
                                  await launch(url,forceSafariVC: false);
                                }
                              },
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                              child: Container(
                                padding: EdgeInsets.all(2.5),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 5.0,
                                          spreadRadius: 0.5,
                                          offset: Offset(0.5, 0.5))
                                    ]),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: Image(
                                    image: AssetImage(Javascript[1].imagen),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              onTap: () async {
                                final String url = Javascript[1].link;
                                if (await canLaunch(url)) {
                                  await launch(url,forceSafariVC: false);
                                }
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Clases más vistas : ",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          )),
                      Container(
                        height: 120,
                        padding: EdgeInsets.all(1),
                        margin: EdgeInsets.all(10),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            GestureDetector(
                              child: Container(
                                padding: EdgeInsets.all(2.5),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 5.0,
                                          spreadRadius: 0.5,
                                          offset: Offset(0.5, 0.5))
                                    ]),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: Image(
                                    image: AssetImage(Javascript[0].imagen),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              onTap: () async {
                                final String url = Javascript[0].link;
                                if (await canLaunch(url)) {
                                  await launch(url,forceSafariVC: false);
                                }
                              },
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                              child: Container(
                                padding: EdgeInsets.all(2.5),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 5.0,
                                          spreadRadius: 0.5,
                                          offset: Offset(0.5, 0.5))
                                    ]),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: Image(
                                    image: AssetImage(Javascript[1].imagen),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              onTap: () async {
                                final String url = Javascript[1].link;
                                if (await canLaunch(url)) {
                                  await launch(url,forceSafariVC: false);
                                }
                              },
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                              child: Container(
                                padding: EdgeInsets.all(2.5),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 5.0,
                                          spreadRadius: 0.5,
                                          offset: Offset(0.5, 0.5))
                                    ]),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: Image(
                                    image: AssetImage(Javascript[3].imagen),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              onTap: () async {
                                final String url = Javascript[3].link;
                                if (await canLaunch(url)) {
                                  await launch(url,forceSafariVC: false);
                                }
                              },
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                              child: Container(
                                padding: EdgeInsets.all(2.5),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 5.0,
                                          spreadRadius: 0.5,
                                          offset: Offset(0.5, 0.5))
                                    ]),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: Image(
                                    image: AssetImage(Javascript[5].imagen),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              onTap: () async {
                                final String url = Javascript[5].link;
                                if (await canLaunch(url)) {
                                  await launch(url,forceSafariVC: false);
                                }
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
