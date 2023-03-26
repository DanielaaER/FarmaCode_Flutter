import 'package:flutter/material.dart';

class fieldReporte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 10,
        child: Text(
          'Eres un heroe',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ));
  }
}
