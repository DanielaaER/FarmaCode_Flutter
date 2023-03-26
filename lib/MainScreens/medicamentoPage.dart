import 'package:FarmaCode/MainScreens/DenunciaPage.dart';
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

import 'incorrectoPage.dart';

String _nombre="";
String _concentracion="";
String _farmacia="";
String _efectos="";
String _foto="";
String _descripcion="";
String _dosis="";
String _qr="";
class medicamentoPage extends StatefulWidget {
  String _qr="";
  medicamentoPage({required String qr}){
    this._qr = qr;
  }

  @override
  State<medicamentoPage> createState() => _medicamentoPageState(_qr);
}


class _medicamentoPageState extends State<medicamentoPage> {
  bool _showPassword = false;
  String _qr="";
  _medicamentoPageState(String qr){
    print ("qr recibido"+qr);
    this._qr = qr;
    recibirString(_qr);
  }
  Future<String> recibirString(qr) async {
    final respuesta = await http.get(Uri.http('192.168.10.43:9090','/api/medicina/${qr}', {qr : '${qr}'}));


    if(respuesta.statusCode==200){
      setState(() {
        var parsedJson = jsonDecode(respuesta.body);
        print(parsedJson);
        _nombre = parsedJson["nombre"];
        _concentracion = parsedJson["tipo"];
        _dosis = parsedJson["dosis"];
        _farmacia = parsedJson["marca"];
        _efectos = parsedJson["efectos"];
        _foto = parsedJson["foto"];
        _descripcion = parsedJson["descricion"];
      });
      print("variables \n"+ _foto);
      return respuesta.body;
    }else{
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => incorrectoPage()));

      throw Exception("Fallo");
    }
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
            Image.network(_foto, width: 200),
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
