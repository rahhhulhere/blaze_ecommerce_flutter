import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class customTextFeild extends StatefulWidget {
  var title;
  customTextFeild({Key? key, this.title}) : super(key: key);

  @override
  State<customTextFeild> createState() => _customTextFeildState();
}

class _customTextFeildState extends State<customTextFeild> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.red,
      decoration: InputDecoration(
        labelText: widget.title,
        // floatingLabelBehavior: FloatingLabelBehavior.never,
        labelStyle: TextStyle(
          color: Colors.grey,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 3, color: PrimeColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 3, color: PrimeColor),
        ),
      ),
    );
  }
}
