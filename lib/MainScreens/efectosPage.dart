import 'package:FarmaCode/components/fields/Denuncias/FieldHora.dart';
import 'package:FarmaCode/components/fields/Denuncias/fieldFecha.dart';
import 'package:FarmaCode/components/fields/Efectos/FielDenuncia.dart';
import 'package:flutter/material.dart';

import '../components/buttons/Denuncia.dart';
import '../components/fields/Efectos/FieldCantidad.dart';
import '../components/fields/Efectos/FieldDosis.dart';


class efectosPage extends StatefulWidget {
  const efectosPage({super.key});

  @override
  State<efectosPage> createState() => _efectosPageState();
}

class _efectosPageState extends State<efectosPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.all(30),
              child: Column(children: [
                FieldEfectos(),
                SizedBox(
                  height: 50,
                ),
                FieldDosis(),
                SizedBox(
                  height: 30,
                ),
                fieldFecha(),
                SizedBox(
                  height: 30,
                ),
                FieldHora(),
                SizedBox(
                  height: 30,
                ),
                FieldCantidad(),
                SizedBox(
                  height: 30,
                ),

                Denuncia(),
              ]),
            )),
      ),
    );
  }
}
