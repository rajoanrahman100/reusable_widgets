import 'package:flutter/material.dart';

class AlertCustom {
  BuildContext context;
  String tittleText;
  GestureTapCallback onPressed;
  String btnText;
  Color btnTextColor;
  Color btnColor;
  num radius;
  double imageH;
  double imageW;
  String desc;
  Container raisedButton;
  String imageUrl;

  AlertCustom(
      {@required this.context,
      @required this.tittleText,
      this.btnText,
      this.btnTextColor,
      this.btnColor,
      this.radius,
      this.desc,
      this.onPressed,
      this.raisedButton,
      this.imageUrl,
      this.imageH,
      this.imageW});

  showAlertDialog() {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  imageUrl == null
                      ? Container()
                      : Image.asset(
                          imageUrl,
                          height: imageH,
                          width: imageW,
                        ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    tittleText,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 17.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 19.0,
                        color: Colors.grey[600]),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  raisedButton == null
                      ? Container()
                      : Container(
                          width: double.infinity,
                          child: RaisedButton(
                            color: btnColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(radius)),
                            onPressed: onPressed,
                            child: Text(
                              btnText,
                              style: TextStyle(
                                color: btnTextColor,
                              ),
                            ),
                          ),
                        )
                ],
              ),
            )));
  }
}
