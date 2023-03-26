import 'package:flutter/material.dart';

class FieldDosis extends StatelessWidget {
  final String dosis;
  const FieldDosis ({
    required this.dosis,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 10,
        child: Text(
          'Dosis: '+dosis,
         textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ));
  }
}
