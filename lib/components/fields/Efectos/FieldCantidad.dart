
import 'package:flutter/material.dart';

class FieldCantidad extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: MediaQuery.of(context).size.width*0.5,
      child: TextFormField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          labelText: "Cantidad",
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
