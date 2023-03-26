import 'package:FarmaCode/MainScreens/medicamentoPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import '../../MainScreens/homePage.dart';

//import 'package:qrscan/qrscan.dart' as scanner;


class menuQR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        //String? cameraScanResult = await scanner.scan();
        //print(cameraScanResult);

        String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
            "#3D8BEF", "Cancelar", false, ScanMode.QR);

        print("=======================> ${barcodeScanRes}"); // escaner
        Navigator.push(context, MaterialPageRoute(builder: (context) => medicamentoPage()));


      },
      child: Text(
        "Escanear QR",
        style: TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40)),
    );
  }
}
