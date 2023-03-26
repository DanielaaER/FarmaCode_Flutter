import 'package:flutter/material.dart';

class fieldLeyenda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 20,
        child: Text(
          'Gracias a personas como tu, la tasa de robo de medicamentos disminuye y evitas la circulación de medicamentos adulterados.',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ));
  }
}
