import 'package:flutter/material.dart';

class FieldEfectos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 10,
        child: Text(
          'Efectos adversos',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ));
  }
}
