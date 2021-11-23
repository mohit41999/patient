import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'colorsandstyles.dart';

class EnterField extends StatelessWidget {
  final String hintText;
  final String labelText;
  TextInputType textInputType;
  //final int maxLength;
  bool showcursor;
  bool readonly;
  bool obscure;
  Widget widget;
  //final FormFieldValidator<String> validator;
  TextEditingController controller;
  EnterField(
    this.hintText,
    this.labelText,
    this.controller, {
    this.textInputType = TextInputType.text,
    this.readonly = false,
    this.showcursor = true,
    this.obscure = false,
    this.widget = const SizedBox(),
    // this.validator = ValidateTextField.validateNull,
    //this.maxLength = 25
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 10, maxHeight: 50),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
              offset: const Offset(2, 5),
            ),
          ],
        ),
        child: TextFormField(
          // autovalidateMode: AutovalidateMode.onUserInteraction,
          // validator: validator,
          // maxLength: maxLength,
          // maxLengthEnforcement: MaxLengthEnforcement.enforced,
          obscureText: obscure,
          enableSuggestions: true,
          showCursor: showcursor,
          readOnly: readonly,
          keyboardType: textInputType,
          controller: controller,
          decoration: InputDecoration(
            enabled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: new BorderSide(color: Colors.transparent)),
            border: new OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: new BorderSide(color: Colors.transparent)),
            // enabledBorder: InputBorder.none,
            // errorBorder: InputBorder.none,
            // disabledBorder: InputBorder.none,
            filled: true,
            labelText: labelText,
            suffixIcon: widget,
            labelStyle: GoogleFonts.montserrat(
                fontSize: 14, color: Colors.black.withOpacity(0.6)),
            hintText: hintText,
            hintStyle: GoogleFonts.montserrat(
                fontSize: 14, color: Colors.black.withOpacity(0.6)),
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }
}

class commonBtn extends StatelessWidget {
  final String s;
  final Color bgcolor;
  final Color textColor;
  final Color borderColor;
  final double borderWidth;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final double textSize;
  final FontWeight fontWeight;
  final double borderRadius;
  const commonBtn({
    Key? key,
    required this.s,
    required this.bgcolor,
    required this.textColor,
    required this.onPressed,
    this.height = 50,
    this.width = double.infinity,
    this.textSize = 16,
    this.fontWeight = FontWeight.w700,
    this.borderRadius = 16.0,
    this.borderColor = Colors.white,
    this.borderWidth = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(bgcolor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    side: BorderSide(color: borderColor, width: borderWidth)))),
        onPressed: onPressed,
        child: Text(
          s,
          style: GoogleFonts.montserrat(
              fontSize: textSize,
              color: textColor,
              letterSpacing: 1,
              fontWeight: fontWeight),
        ),
      ),
    );
  }
}

class commonRow extends StatelessWidget {
  final String Title;
  final String subTitle;

  const commonRow({
    Key? key,
    required this.Title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Title,
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold, fontSize: 20, color: appblueColor),
        ),
        Row(
          children: [
            Text(
              subTitle,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  decoration: TextDecoration.underline,
                  color: apptealColor),
            ),
            Icon(
              Icons.arrow_forward,
              color: appblueColor,
              size: 10,
            )
          ],
        )
      ],
    );
  }
}

class rowTextIcon extends StatelessWidget {
  final String asset;
  final String text;
  const rowTextIcon({
    Key? key,
    required this.asset,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          asset,
          height: 14,
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          text,
          style: GoogleFonts.montserrat(fontSize: 12),
        ),
      ],
    );
  }
}

class titleColumn extends StatelessWidget {
  final String title;
  final String value;
  const titleColumn({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          title,
          style: GoogleFonts.lato(
              fontSize: 10, color: Color(0xff252525).withOpacity(0.5)),
        ),
        Text(
          value,
          style: GoogleFonts.lato(fontSize: 12, color: Color(0xff252525)),
        ),
      ],
    );
  }
}
