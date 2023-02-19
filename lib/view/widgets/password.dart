import 'package:flutter/material.dart';
import 'constants.dart';

class PasswordFeild extends StatefulWidget {
  var fieldKey, hintText, labelText, helperText, onSaved, validator, onFieldSubmitted;
   PasswordFeild({super.key, Key,
    this.fieldKey,
    this.hintText,
    this.labelText,
    this.onSaved,
    this.helperText,
    this.validator,
    this.onFieldSubmitted
  });


  @override
  State<PasswordFeild> createState() => _PasswordFeildState();
}

class _PasswordFeildState extends State<PasswordFeild> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.fieldKey,
      obscureText: _obscureText,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      cursorColor: Colors.red,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: widget.labelText,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              width: 3, color: RedColor),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              width: 3, color: RedColor),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child:
          Icon(_obscureText ? Icons.visibility : Icons.visibility_off,
          color: RedColor,
          ),
        ),
      ),
    );
  }
}
