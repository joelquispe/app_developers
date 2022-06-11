

import 'package:appdevelopers/listas/listasclases.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseAdobexd extends StatefulWidget {
  static String route = "/courseadobexd";
  CourseAdobexd({Key? key}) : super(key: key);

  @override
  State<CourseAdobexd> createState() => _CourseAdobexdState();
}

class _CourseAdobexdState extends State<CourseAdobexd> {
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
                  icon: Image.asset(("assets/imgcursos/adobexd.png")),
                ),
                Text(
                  "ADOBE XD",
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
                          image: AssetImage(Adobexd[0].imagen),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () async {
                      final String url = Adobexd[0].link;
                      if (await canLaunch(url)) {
                        await launch(url);
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
                          ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    onTap: () async {},
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
                          ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    onTap: () async {},
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}