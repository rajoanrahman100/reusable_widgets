import 'package:flutter/material.dart';

class TF extends StatelessWidget {
  final TextEditingController editingController;
  final String hintText;
  final String helplText;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final bool isPassword;
  final bool enable;
  final bool redOnly;
  final Color borderColor;

  TF(
      {this.editingController,
      this.hintText,
      this.helplText,
      this.prefixIcon,
      this.suffixIcon,
      this.isPassword,
      this.enable,
      this.redOnly,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: TextFormField(
        controller: editingController,
        readOnly: null == redOnly ? false : true,
        obscureText: null == isPassword ? false : true,
        decoration: InputDecoration(
            hintText: null == hintText ? '' : hintText,
            labelText: null == helplText ? '' : helplText,
            prefixIcon: null == prefixIcon ? null : Icon(prefixIcon),
            suffixIcon: null == suffixIcon ? null : Icon(suffixIcon),
            enabled: null == enable ? true : false,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: null == borderColor ? Colors.teal : borderColor,
                    width: 2.0)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: null == borderColor ? Colors.teal : borderColor,
                    width: 2.0))),
      ),
    );
  }
}
