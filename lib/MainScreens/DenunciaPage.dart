import 'package:FarmaCode/MainScreens/confReportePage.dart';
import 'package:FarmaCode/components/buttons/hero.dart';
import 'package:FarmaCode/components/fields/Denuncias/FielDenuncia.dart';
import 'package:FarmaCode/components/fields/Denuncias/FieldHora.dart';
import 'package:FarmaCode/components/fields/Denuncias/fielCiudar.dart';
import 'package:FarmaCode/components/fields/Denuncias/fieldEstado.dart';
import 'package:FarmaCode/components/fields/Denuncias/fieldFarmacia.dart';
import 'package:FarmaCode/components/fields/Denuncias/fieldFecha.dart';
import 'package:flutter/material.dart';

import '../components/buttons/Denuncia.dart';
import '../components/fields/Denuncias/fieldSSucursal.dart';
import '../components/fields/Denuncias/fieldNota.dart';


class DenunciaPage extends StatefulWidget {
  const DenunciaPage({super.key});

  @override
  State<DenunciaPage> createState() => _DenunciaPageState();
}

class _DenunciaPageState extends State<DenunciaPage> {
    @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.all(30),
          child: Column(children: [
            FielDenuncias(),
                        SizedBox(
              height: 50,
            ),
            fieldFecha(),
            SizedBox(
              height: 30,
            ),
            FieldHora(),
            SizedBox(
              height: 30,
            ),
            fieldEstado(),
            SizedBox(
              height: 30,
            ),
            fielCiudad(),
            SizedBox(
              height: 30,
            ),
            fieldFamrmacia(),
            SizedBox(
              height: 30,
            ),
            fieldSucursal(),
            SizedBox(
              height: 30,
            ),
            fieldNota(),
            SizedBox(
              height: 30,
            ),
            hero(),
          ]),
        )),
      ),
    );
  }
}
