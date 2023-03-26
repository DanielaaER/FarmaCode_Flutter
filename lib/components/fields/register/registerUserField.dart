
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


class registerUserFiedl extends StatelessWidget {
  var matriculaMask = MaskTextInputFormatter(
      mask: '######################',
      filter: {
        "#": RegExp(r'[A-z]'),
      },
      type: MaskAutoCompletionType.lazy);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        inputFormatters: [matriculaMask],
        decoration: InputDecoration(
            labelText: "Usuario",
            hintText: "",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true),
      ),
    );
  }
}
