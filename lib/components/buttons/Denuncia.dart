import 'package:FarmaCode/MainScreens/confReportePage.dart';
import 'package:FarmaCode/components/buttons/menuQR.dart';
import 'package:flutter/material.dart';

import '../../MainScreens/menuPage.dart';

class Denuncia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => confReportePage()));
      },
      child: Text(
        "Reportar Irregularidad",
        style: TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
    );
  }
}
