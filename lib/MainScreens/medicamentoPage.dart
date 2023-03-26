import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../components/fields/medicamento/FieldAdministracion.dart';
import '../components/fields/medicamento/fieldConcentracion.dart';
import '../components/fields/medicamento/fieldDosis.dart';
import '../components/fields/medicamento/fieldEfectos.dart';
import '../components/fields/medicamento/fieldFarmaceutica.dart';
import '../components/fields/medicamento/fieldNombre.dart';
import 'package:FarmaCode/components/buttons/Denuncia.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

String _nombre="";
String _concentracion="";
String _farmacia="";
String _efectos="";
String _foto="";
String _descripcion="";
String _dosis="";
String _qr="";
class medicamentoPage extends StatefulWidget {
  final String? qr;
  medicamentoPage({Key? key, this.qr}):super (key:key)

  @override
  State<medicamentoPage> createState() => _medicamentoPageState(this.qr);
}


class _medicamentoPageState extends State<medicamentoPage> {
  bool _showPassword = false;
  String? qr="";
  _medicamentoPageState(String? qr){
    this.qr = qr;
  }
  final _url = Uri.http('http//:192.168.10.120/api/medicina/${qr}');

  Future<String> recibirString() async {
    final respuesta = await http.get(_url);
    if(respuesta.statusCode==200){

      print( respuesta.body.toString());
      setState(() {
        var parsedJson = jsonDecode(respuesta.body);
        _nombre = parsedJson["nombre"];
        _concentracion = parsedJson["tipo"];
        _dosis = parsedJson["dosis"];
        _farmacia = parsedJson["marca"];
        _efectos = parsedJson["efectos"];
        _foto = parsedJson["foto"];
        _descripcion = parsedJson["descripcion"];
      });
      return respuesta.body;
    }else{
      throw Exception("Fallo");
    }
  }
  @override
  void initState() {

    recibirString();
    super.initState();
  }

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
              _foto, //aqui agregar imagen medicina

              height: 180,
            ),
            SizedBox(
              height: 50,
            ),
            FieldNombre(
                 nombre: _nombre,
            ),
            SizedBox(
              height: 50,
            ),
            FieldConcentracion(
              concentracion: _concentracion,
            ),
            SizedBox(
              height: 50,
            ),
            FieldFarmaceutica(
              farmacia: _farmacia,
            ),
            SizedBox(
              height: 50,
            ),
            FieldAdministracion(
              administracion: _descripcion,
            ),
            SizedBox(
              height: 50,
            ),
            FieldDosis(
              dosis : _dosis,
            ),
            SizedBox(
              height: 50,
            ),
            FieldEfectos(
              efectos: _efectos,
            ), SizedBox(
              height: 50,
            ),
            Denuncia()
          ]),
        )),
      ),
    );
  }
}
