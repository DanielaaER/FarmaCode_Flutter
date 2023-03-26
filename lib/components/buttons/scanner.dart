import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import '../../MainScreens/homePage.dart';

import '../../MainScreens/menuScannerPage.dart';

class scanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => menuScannerPage()));
      },
      child: Text(
        "Escanear un medicamento",
        style: TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40)),
    );
  }
}
