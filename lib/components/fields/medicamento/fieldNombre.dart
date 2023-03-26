import 'package:flutter/material.dart';

class FieldNombre extends StatelessWidget {
  final String nombre;
  const FieldNombre ({
     required this.nombre,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 10,
        child: Text(
          'nombre: '+nombre,
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ));
  }
}
