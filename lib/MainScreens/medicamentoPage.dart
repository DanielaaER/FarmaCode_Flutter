import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../components/fields/medicamento/FieldAdministracion.dart';
import '../components/fields/medicamento/fieldConcentracion.dart';
import '../components/fields/medicamento/fieldDosis.dart';
import '../components/fields/medicamento/fieldEfectos.dart';
import '../components/fields/medicamento/fieldFarmaceutica.dart';
import '../components/fields/medicamento/fieldNombre.dart';
import 'package:FarmaCode/components/buttons/Denuncia.dart';

class medicamentoPage extends StatefulWidget {
  const medicamentoPage({super.key});

  @override
  State<medicamentoPage> createState() => _medicamentoPageState();
}

class _medicamentoPageState extends State<medicamentoPage> {
  bool _showPassword = false;

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
              height: 50,
            ),
            Image.asset(
              "assets/images/Logo_FarmaCode.png", //aqui agregar imagen medicina
              height: 180,
            ),
            SizedBox(
              height: 50,
            ),
            FieldNombre(),
            SizedBox(
              height: 50,
            ),
            FieldConcentracion(),
            SizedBox(
              height: 50,
            ),
            FieldFarmaceutica(),
            SizedBox(
              height: 50,
            ),
            FieldAdministracion(),
            SizedBox(
              height: 50,
            ),
            FieldDosis(),
            SizedBox(
              height: 50,
            ),
            FieldEfectos(), SizedBox(
              height: 50,
            ),
            Denuncia()
          ]),
        )),
      ),
    );
  }
}
