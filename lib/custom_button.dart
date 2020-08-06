import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  CustomButton({@required this.onPressed,this.btnText,this.btnColor,this.splashColor,this.textColor,this.btnWidth});

  final GestureTapCallback onPressed;
  final String btnText;
  final Color btnColor;
  final Color splashColor;
  final Color textColor;
  final num btnWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      margin: EdgeInsets.symmetric(horizontal: null==btnWidth?20:btnWidth),
      child: RaisedButton(
        color: btnColor,
        splashColor: null==splashColor?Colors.grey:splashColor,
        child: Text(btnText,style: TextStyle(
          color: textColor
        ),),
        onPressed: onPressed,
        shape: const StadiumBorder(),
      ),
    );
  }
}