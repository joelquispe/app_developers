// import 'package:admob_flutter/admob_flutter.dart';
// import 'package:appdevelopers/folderdonate/alertdonate.dart';
// import 'package:appdevelopers/improvements/drawer.dart';
// import 'package:flutter/material.dart';

// class DonatePage extends StatefulWidget {
//   static String route = "/donatepage";
//   DonatePage({Key? key}) : super(key: key);

//   @override
//   State<DonatePage> createState() => _DonatePageState();
// }

// class _DonatePageState extends State<DonatePage> {
//   @override
//   Widget build(BuildContext context) {
//     //BANNER 05
//     return Scaffold(
//       backgroundColor: Color(0xff071e3d),
//       appBar: AppBar(
//         title: Text("Donaciones"),
//         backgroundColor: Color(0xff071e3d),
//       ),
//       bottomNavigationBar: Container(
//           height: 60,
//           child: Center(
//             child: AdmobBanner(
//                 adUnitId: "ca-app-pub-3302685357796387/9200076288",
//                 adSize: AdmobBannerSize.BANNER,
//                 listener: (AdmobAdEvent event, Map<String, dynamic>? args) {
//                   event;
//                   args;
//                   'Banner';
//                 }),
//           ),
//         ),
//       drawer: drawerpage(context),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GestureDetector(
//               child: Container(
//               width: 100,
//               height: 100,
//               margin: EdgeInsets.only(bottom: 20),
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage("assets/donate/paypal.png")),
//                   borderRadius: BorderRadius.all(Radius.circular(10))),
//             ),
//             onTap: () {
//               showDialog(
//                         context: context,
//                         barrierDismissible: false,
//                         builder: (_) {
//                           return alertpaypal(context);
//                         });
//             }
//             ),
            
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   child: Container(
//                   width: 100,
//                   height: 100,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/donate/interbank.png")),
//                       borderRadius: BorderRadius.all(Radius.circular(10))),
//                 ),
//                   onTap: () {
//                     showDialog(
//                         context: context,
//                         barrierDismissible: false,
//                         builder: (_) {
//                           return alertinterbank(context);
//                         });
//                   },
//                 ),
                
//                 SizedBox(
//                   width: 40,
//                 ),
//                 GestureDetector(
//                   child: Container(
//                     width: 100,
//                     height: 100,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage("assets/donate/bcp.png")),
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                   ),
//                   onTap: () {
//                     showDialog(
//                         context: context,
//                         barrierDismissible: false,
//                         builder: (_) {
//                           return alertbcp(context);
//                         });
//                   },
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
