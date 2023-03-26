import 'package:FarmaCode/MainScreens/efectosPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:FarmaCode/MainScreens/DenunciaPage.dart';

import '../../MainScreens/homePage.dart';

class DenunciaSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        //String? cameraScanResult = await scanner.scan();
        //print(cameraScanResult);

        String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
            "#3D8BEF", "Cancelar", false, ScanMode.QR);

        print("=======================> ${barcodeScanRes}"); // escaner
        Navigator.push(context, MaterialPageRoute(builder: (context) => efectosPage()));


      },
      child: Text(
        "Denuncia un efecto secundario",
        style: TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40)),
    );
  }
}

