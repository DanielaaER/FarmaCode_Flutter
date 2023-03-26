import 'package:flutter/material.dart';

class FieldFarmaceutica extends StatelessWidget {
  final String farmacia;
  const FieldFarmaceutica ({
    required this.farmacia,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 10,
        child: Text(
          'Farmaceutica: '+farmacia,
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ));
  }
}
