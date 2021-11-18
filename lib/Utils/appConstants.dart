import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterField extends StatelessWidget {
  final String hintText;
  final String labelText;
  TextInputType textInputType;
  final int maxLength;
  bool showcursor;
  bool readonly;
  bool obscure;
  Widget icon;
  //final FormFieldValidator<String> validator;
  TextEditingController controller;
  EnterField(this.hintText, this.labelText, this.icon, this.controller,
      {this.textInputType = TextInputType.text,
      this.readonly = false,
      this.showcursor = true,
      this.obscure = false,
      // this.validator = ValidateTextField.validateNull,
      this.maxLength = 25});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        // validator: validator,
        maxLength: maxLength,
        // maxLengthEnforcement: MaxLengthEnforcement.enforced,
        obscureText: obscure,
        enableSuggestions: true,
        showCursor: showcursor,
        readOnly: readonly,
        keyboardType: textInputType,
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: icon,
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: GoogleFonts.montserrat(
            color: Colors.grey,
            fontSize: 12,
          ),
          labelText: labelText,
          labelStyle: GoogleFonts.montserrat(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
