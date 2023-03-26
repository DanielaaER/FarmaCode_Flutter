
import 'package:flutter/material.dart';

class fieldFecha extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: MediaQuery.of(context).size.width*0.5,
      child: TextFormField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          labelText: "Fecha",
          border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true),
        ),
      )
    ;
  }
}
