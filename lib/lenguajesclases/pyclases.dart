import 'package:appdevelopers/listas/listasclases.dart';
import 'package:appdevelopers/objetos/clasesdeprogramacion.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PythonClassPage extends StatefulWidget {
  PythonClassPage({Key? key}) : super(key: key);
  static String route = "/pythonclasspage";
  static int numero = 1;
  @override
  State<PythonClassPage> createState() => _PythonClassPageState();
}

class _PythonClassPageState extends State<PythonClassPage> {
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff071e3d),
          title: Center(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(("assets/imgcursos/python.png")),
                ),
                Text(
                  "PYTHON",
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
                          image: AssetImage(Python[0].imagen),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () async {
                      final String url = Python[0].link;
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
                       width: 100.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                      
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        
                      ),
                    ),
                   
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
