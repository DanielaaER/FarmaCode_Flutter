import 'package:flutter/material.dart';

class FieldEfectos extends StatelessWidget {
  final String efectos;
  const FieldEfectos ({
    required this.efectos,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 10,
        child: Text(
          'Efectos adversoso: '+efectos,
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ));
  }
}
