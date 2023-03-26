import 'package:FarmaCode/MainScreens/medicamentoPage.dart';
import 'package:FarmaCode/MainScreens/incorrectoPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import '../../MainScreens/homePage.dart';

class menuRFID extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
       try{
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => medicamentoPage(qr: "")));
        }catch(e) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => incorrectoPage()));
    }

  },
      child: Text(
        "Escanear RFID",
        style: TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40)),
    );
  }
}
