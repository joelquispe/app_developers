import 'package:appdevelopers/listas/listasclases.dart';
import 'package:appdevelopers/objetos/clasesdeprogramacion.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class JavaClassPage extends StatefulWidget {
  JavaClassPage({Key? key}) : super(key: key);
  static String route = "/javaclasspage";
  @override
  State<JavaClassPage> createState() => _JavaClassPageState();
}

class _JavaClassPageState extends State<JavaClassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff071e3d),
          title: Center(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(("assets/imgcursos/java.png")),
                ),
                Text(
                  "Java",
                  style: TextStyle(),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          )),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(color: Color(0xff071e3d)),
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    child: Container(
                      constraints:BoxConstraints(
                        maxHeight:240.0,
                        minHeight: 120.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 5.0,
                                spreadRadius: 0.5,
                                offset: Offset(0.5, 0.5))
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
                  )),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                      child: GestureDetector(
                    child: Container(
                      constraints:BoxConstraints(
                        maxHeight:240.0,
                        minHeight: 120.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 5.0,
                                spreadRadius: 0.5,
                                offset: Offset(0.5, 0.5))
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
                  )),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                      child: GestureDetector(
                    child: Container(
                      constraints:BoxConstraints(
                        maxHeight:240.0,
                        minHeight: 120.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 5.0,
                                spreadRadius: 0.5,
                                offset: Offset(0.5, 0.5))
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image(
                          image: AssetImage(Java[2].imagen),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () async {
                      final String url = Java[2].link;
                      if (await canLaunch(url)) {
                        await launch(url,forceSafariVC: false);
                      }
                    },
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    child: Container(
                      constraints:BoxConstraints(
                        maxHeight:240.0,
                        minHeight: 120.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 5.0,
                                spreadRadius: 0.5,
                                offset: Offset(0.5, 0.5))
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image(
                          image: AssetImage(Java[3].imagen),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () async {
                      final String url = Java[3].link;
                      if (await canLaunch(url)) {
                        await launch(url,forceSafariVC: false);
                      }
                    },
                  )),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                      child: GestureDetector(
                    child: Container(
                      constraints:BoxConstraints(
                        maxHeight:240.0,
                        minHeight: 120.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 5.0,
                                spreadRadius: 0.5,
                                offset: Offset(0.5, 0.5))
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image(
                          image: AssetImage(Java[4].imagen),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () async {
                      final String url = Java[4].link;
                      if (await canLaunch(url)) {
                        await launch(url,forceSafariVC: false);
                      }
                    },
                  )),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                      child: GestureDetector(
                    child: Container(
                      constraints:BoxConstraints(
                        maxHeight:240.0,
                        minHeight: 120.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 5.0,
                                spreadRadius: 0.5,
                                offset: Offset(0.5, 0.5))
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image(
                          image: AssetImage(Java[5].imagen),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () async {
                      final String url = Java[5].link;
                      if (await canLaunch(url)) {
                        await launch(url,forceSafariVC: false);
                      }
                    },
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    child: Container(
                      constraints:BoxConstraints(
                        maxHeight:240.0,
                        minHeight: 120.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 5.0,
                                spreadRadius: 0.5,
                                offset: Offset(0.5, 0.5))
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
                  )),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                      child: GestureDetector(
                    child: Container(
                      constraints:BoxConstraints(
                        maxHeight:240.0,
                        minHeight: 120.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 5.0,
                                spreadRadius: 0.5,
                                offset: Offset(0.5, 0.5))
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
                  )),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                      child: GestureDetector(
                    child: Container(
                      constraints:BoxConstraints(
                        maxHeight:240.0,
                        minHeight: 120.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 5.0,
                                spreadRadius: 0.5,
                                offset: Offset(0.5, 0.5))
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image(
                          image: AssetImage(Java[8].imagen),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () async {
                      final String url = Java[8].link;
                      if (await canLaunch(url)) {
                        await launch(url,forceSafariVC: false);
                      }
                    },
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    child: Container(
                      constraints:BoxConstraints(
                        maxHeight:240.0,
                        minHeight: 120.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 5.0,
                                spreadRadius: 0.5,
                                offset: Offset(0.5, 0.5))
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image(
                          image: AssetImage(Java[9].imagen),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () async {
                      final String url = Java[9].link;
                      if (await canLaunch(url)) {
                        await launch(url,forceSafariVC: false);
                      }
                    },
                  )),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                      child: GestureDetector(
                    child: Container(
                       width: 100.0,
                      height: 120.0,
                      
                      
                    ),
                    
                  )),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                      child: GestureDetector(
                    child: Container(
                       width: 100.0,
                      height: 120.0,
                      
                      
                    ),
                    
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
