import 'package:flutter/material.dart';

class FieldConcentracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 10,
        child: Text(
          'Concentracion',
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ));
  }
}
