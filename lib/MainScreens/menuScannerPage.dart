import 'package:FarmaCode/components/buttons/Denuncia.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../components/buttons/GotoLogin.dart';
import '../components/buttons/menuQR.dart';
import '../components/buttons/menuRFID.dart';
import '../components/fields/menuScanner/menuScanner.dart';
class menuScannerPage extends StatefulWidget {
  const menuScannerPage({super.key});

  @override
  State<menuScannerPage> createState() => _menuState();
}

class _menuState extends State<menuScannerPage> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.all(50),
          child: Column(children: [
            SizedBox(
              height: 100,
            ),
            menuScanner(),
            SizedBox(
              height: 50,
            ),
            menuQR(),
            SizedBox(
              height: 50,
            ),
            menuRFID()
          ]),
        )),
      ),
    );
  }
}
