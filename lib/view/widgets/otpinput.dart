import 'package:blaze/view/widgets/constants.dart';
import 'package:flutter/material.dart';

class OtpInput extends StatelessWidget {
  final TextEditingController  controller;
  final bool autoFocus;
  const OtpInput(
      this.controller,
      this.autoFocus,
      {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        cursorColor: RedColor,
        maxLength: 1,
        decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: UnderlineInputBorder(
          ),
    focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
    width: 3, color: RedColor)),

    counterText: '',
          hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value){
          if( value.length == 1){
            FocusScope.of(context).nextFocus();
          }
        },
        ),
      );
  }
}
