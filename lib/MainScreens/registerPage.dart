import 'package:FarmaCode/components/buttons/RegisterButtonPage.dart';
import 'package:FarmaCode/MainScreens/homePage.dart';
import 'package:FarmaCode/components/fields/register/registerEdad.dart';
import 'package:FarmaCode/components/fields/register/registerPasswordField.dart';
import 'package:FarmaCode/components/fields/register/registerSex.dart';
import 'package:FarmaCode/components/fields/register/registerUserField.dart';
import 'package:FarmaCode/components/fields/register/registeremail.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../components/buttons/GotoLogin.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.all(30),
          child: Column(children: [
            Image.asset(
              "assets/images/Logo_FarmaCode.png",
              height: 180,
            ),
            SizedBox(
              height: 100,
            ),
            registerUserFiedl(),
            SizedBox(
              height: 15,
            ),
            registerEmailField(),
            SizedBox(
              height: 15,
            ),
            registerPasswordField(),
            SizedBox(
              height: 15
              ),
            registerEdadField(),
            SizedBox(
              height: 30,
            ),
            RegisterButtonPage(),
            SizedBox(
              height: 15,
            ),
            GotoLogin(),
          ]),
        )),
      ),
    );
  }
}
