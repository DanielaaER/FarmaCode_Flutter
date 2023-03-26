import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../components/buttons/DenunciaSelect.dart';
import '../components/buttons/GotoLogin.dart';
import '../components/buttons/ScannerSelect.dart';
import '../components/fields/menuScanner/menuScanner.dart';

class menuPage extends StatefulWidget {
  const menuPage({super.key});

  @override
  State<menuPage> createState() => _menuState();
}

class _menuState extends State<menuPage> {
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
            ScannerSelect(),
            SizedBox(
              height: 50,
            ),
            DenunciaSelect(),
            SizedBox(
              height: 15,
            ),
          ]),
        )),
      ),
    );
  }
}
