import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget AlertCommingSoon(BuildContext context) {
  return CupertinoAlertDialog(
    title: Text("Saludos"),
    content: Text("Próximamente estará disponible"),
    actions: [
      CupertinoDialogAction(
          isDefaultAction: true,
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Regresar")))
    ],
  );
}
