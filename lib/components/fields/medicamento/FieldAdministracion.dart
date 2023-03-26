import 'package:flutter/material.dart';

class FieldAdministracion extends StatelessWidget {
  final String administracion;
  const FieldAdministracion ({
    required this.administracion,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 10,
        child: Text(
          'Administracion: '+administracion,
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ));
  }
}
