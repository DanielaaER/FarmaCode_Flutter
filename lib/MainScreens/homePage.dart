import 'package:FarmaCode/components/buttons/MyLoginButton.dart';
import 'package:FarmaCode/components/buttons/MyRegisterButton.dart';
import 'package:FarmaCode/components/fields/login/fieldformPassword.dart';
import 'package:FarmaCode/components/fields/login/fieldformUser.dart';
import 'package:FarmaCode/MainScreens/registerPage.dart';
import 'package:camera/camera.dart';
import '../camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              height: 120,
            ),
            FieldUserLogin(),
            SizedBox(
              height: 15,
            ),
            FieldPasswordLogin(),
            SizedBox(
              height: 30,
            ),
            MyLoginButton(),
            SizedBox(
              height: 15,
            ),
            MyRegisterButton(),
          ]),
        )),
      ),
    );
  }
}
