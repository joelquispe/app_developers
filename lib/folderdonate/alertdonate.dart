// import 'package:appdevelopers/improvements/snacksbar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:url_launcher/url_launcher.dart';

// Widget alertbcp(con) {
//   return AlertDialog(
//     backgroundColor: Color(0xff071e3d),
//     title:
//         Text("Cuenta bancaria BCP", style: TextStyle(color: Color(0xff21e6c1))),
//     content: Container(
//       width: 100,
//       height: 146,
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Text(
//                 " Cuenta Ahorro Soles:\n19303417686006",
//                 style: TextStyle(color: Colors.white),
//               ),
//               IconButton(
//                 onPressed: () {
//                   Clipboard.setData(new ClipboardData(text: "19303417686006"));
//                   ScaffoldMessenger.of(con).showSnackBar(snackbarcopy);
//                 },
//                 icon: Icon(Icons.copy),
//                 color: Color(0xffcdffeb),
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               Text(
//                 " Cuenta Interbancario:\n 00219310341768600610",
//                 style: TextStyle(color: Colors.white),
//               ),
//               IconButton(
//                 onPressed: () {
//                   Clipboard.setData(
//                       new ClipboardData(text: "00219310341768600610"));
//                   ScaffoldMessenger.of(con).showSnackBar(snackbarcopy);
//                 },
//                 icon: Icon(Icons.copy),
//                 color: Color(0xffcdffeb),
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               Text(
//                 " Swift: BCPLPEPL",
//                 style: TextStyle(color: Colors.white),
//               ),
//               IconButton(
//                 onPressed: () {
//                   Clipboard.setData(new ClipboardData(text: "BINPPEPL"));
//                   ScaffoldMessenger.of(con).showSnackBar(snackbarcopy);
//                 },
//                 icon: Icon(Icons.copy),
//                 color: Color(0xffcdffeb),
//               ),
//             ],
//           )
//         ],
//       ),
//     ),
//     actions: [
//       ElevatedButton(
//           onPressed: () {
//             Navigator.pop(con);
//           },
//           child: Text("Regresar"))
//     ],
//   );
// }

// Widget alertinterbank(con) {
//   return AlertDialog(
//     backgroundColor: Color(0xff071e3d),
//     title: Text(
//       "Cuenta bancaria Interbank",
//       style: TextStyle(color: Color(0xff21e6c1)),
//     ),
//     content: Container(
//       width: 100,
//       height: 146,
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Text(
//                 " Cuenta Ahorro Soles:\n 8983159558390",
//                 style: TextStyle(color: Colors.white),
//               ),
//               IconButton(
//                 onPressed: () {
//                   Clipboard.setData(new ClipboardData(text: "8983159558390"));
//                   ScaffoldMessenger.of(con).showSnackBar(snackbarcopy);
//                 },
//                 icon: Icon(Icons.copy),
//                 color: Color(0xffcdffeb),
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               Text(
//                 " Cuenta Interbancario:\n 00389801315955839040",
//                 style: TextStyle(color: Colors.white),
//               ),
//               IconButton(
//                 onPressed: () {
//                   Clipboard.setData(
//                       new ClipboardData(text: "00389801315955839040"));
//                   ScaffoldMessenger.of(con).showSnackBar(snackbarcopy);
//                 },
//                 icon: Icon(Icons.copy),
//                 color: Color(0xffcdffeb),
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               Text(
//                 " Swift: BINPPEPL",
//                 style: TextStyle(color: Colors.white),
//               ),
//               IconButton(
//                 onPressed: () {
//                   Clipboard.setData(new ClipboardData(text: "BINPPEPL"));
//                   ScaffoldMessenger.of(con).showSnackBar(snackbarcopy);
//                 },
//                 icon: Icon(Icons.copy),
//                 color: Color(0xffcdffeb),
//               ),
//             ],
//           )
//         ],
//       ),
//     ),
//     actions: [
//       ElevatedButton(
//           onPressed: () {
//             Navigator.pop(con);
//           },
//           child: Text("Regresar"))
//     ],
//   );
// }

// Widget alertpaypal(con) {
//   return AlertDialog(
//     backgroundColor: Color(0xff071e3d),
//     title: Text("Cuenta Paypal", style: TextStyle(color: Color(0xff21e6c1))),
//     content: TextButton(
//         onPressed: () async {
//           final String url = 'https://paypal.me/joeldevelopers';
//           if (await canLaunch(url)) {
//             await launch(url);
//           }
//         },
//         child: Text("https://paypal.me/joeldevelopers",
//             style: TextStyle(color: Colors.white))),
//     actions: [
//       ElevatedButton(
//           onPressed: () {
//             Navigator.pop(con);
//           },
//           child: Text("Regresar"))
//     ],
//   );
// }
