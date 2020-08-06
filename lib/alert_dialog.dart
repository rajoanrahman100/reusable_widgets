import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CustomDialog {
  BuildContext context;
  String tittleText;
  GestureTapCallback onPressed;
  String btnText;
  Color btnTextColor;
  Color btnColor;
  num radius;
  String desc;
  AlertType alertType;

  CustomDialog(
      {@required this.context,
      this.tittleText,
      this.btnText,
      this.btnTextColor,
      this.btnColor,
      this.radius,
      this.desc,
      this.alertType,
      this.onPressed});






  showDialogue() {
    return Alert(
      context: context,
      type: alertType,
      title: tittleText,
      content: Column(
        children: <Widget>[Text(desc)],
      ),
      buttons: [
        DialogButton(
          child: Text(
            btnText,
            style: TextStyle(color: btnTextColor, fontSize: 18),
          ),
          onPressed: onPressed,
          color: btnColor,
          radius: BorderRadius.circular(radius),
        ),
      ],
    ).show();
  }
}


