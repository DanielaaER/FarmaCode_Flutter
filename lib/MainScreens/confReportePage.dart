import 'package:FarmaCode/components/buttons/home.dart';

import 'package:FarmaCode/components/fields/Denuncias/fieldLeyenda.dart';
import 'package:FarmaCode/components/fields/Denuncias/fieldReporte.dart';
import 'package:flutter/material.dart';

import '../components/buttons/Denuncia.dart';
import '../components/fields/Denuncias/fieldSSucursal.dart';
import '../components/fields/Denuncias/fieldNota.dart';


class confReportePage extends StatefulWidget {
  const confReportePage({super.key});

  @override
  State<confReportePage> createState() => _confReportePage();
}

class _confReportePage extends State<confReportePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.all(30),
              child: Column(children: [
                SizedBox(
                  height: 100,
                ),
                fieldReporte(),
                SizedBox(
                  height: 50,
                ),
                fieldLeyenda(),
                SizedBox(
                  height: 30,
                ),
                home(),

              ]),
            )),
      ),
    );
  }
}
