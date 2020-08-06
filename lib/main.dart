import 'package:flutter/material.dart';
import 'package:reusable_widgets/custom_button.dart';

import 'custom_alert.dart';
import 'text_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var customAlert = AlertCustom(
        context: context,
        tittleText: "Tittle",
        desc: "This is description",
       // imageUrl: "images/tick.png",
        //imageH: 40.0,
        //imageW: 40.0,
        radius: 10.0,
        //raisedButton: Container(),
        btnText: "Click Here",
        btnTextColor: Colors.white,
        btnColor: Colors.blue,
        onPressed: () {
          Navigator.pop(context);
        });

    return Scaffold(
      appBar: AppBar(
        title: Text("Log In"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TF(
              editingController: _emailController,
              hintText: "emai",
              helplText: "Email",
              borderColor: Colors.deepOrange,
            ),
            TF(
              editingController: _passController,
              hintText: "password",
              helplText: "Password",
              isPassword: true,
              borderColor: Colors.deepOrange,
            ),
            CustomButton(
                btnColor: Colors.green,
                splashColor: Colors.deepOrange,
                btnWidth: 50.0,
                btnText: "Tap Me",
                textColor: Colors.white,
                onPressed: () {
                   print(_emailController.text);
                  customAlert.showAlertDialog();
                })
          ],
        ),
      ),
    );
  }
}
