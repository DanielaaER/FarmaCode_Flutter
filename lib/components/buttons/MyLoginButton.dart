import 'package:FarmaCode/components/buttons/menuQR.dart';
import 'package:flutter/material.dart';

import '../../MainScreens/homePage.dart';
import '../../MainScreens/menuPage.dart';
import '../../MainScreens/menuScannerPage.dart';

class MyLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => menuPage()));
      },
      child: Text(
        "Iniciar Sesion",
        style: TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 100)),
    );
  }
}
