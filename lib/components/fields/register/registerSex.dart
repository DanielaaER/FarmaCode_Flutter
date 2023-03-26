
import 'package:flutter/material.dart';

class registerSexoField extends StatelessWidget {
  String dropdowncurrentvalue= "Mujer";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButton(
        items: <String>['Mujer', 'Hombre','Otro'].map<DropdownMenuItem<String>>((String value){
          return DropdownMenuItem<String>(
             value: value,
             child: Text(value),
          );
        }).toList(),
        value: dropdowncurrentvalue,
        onChanged: (value) => dropdowncurrentvalue,
    ));
  }
}

SetState(Null Function() param0) {
}