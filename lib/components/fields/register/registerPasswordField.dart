import 'package:FarmaCode/MainScreens/homePage.dart';
import 'package:flutter/material.dart';

import '../../../MainScreens/registerPage.dart';

class registerPasswordField extends StatefulWidget {
  @override
  State<registerPasswordField> createState() => _registerPasswordFieldState();
}

class _registerPasswordFieldState extends State<registerPasswordField> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                labelText: "Contraseña",
                hintText: "Contraseña",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none),
                fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                suffixIcon: GestureDetector(
                  child: Icon(_showPassword == false
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onTap: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                ),
                filled: true),
            obscureText: _showPassword == false ? true : false,
          ));
    });
  }
}
