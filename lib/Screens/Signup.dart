import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/Screens/SignInScreen.dart';
import 'package:patient/Utils/colorsandstyles.dart';
import 'package:patient/Utils/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _controller = TextEditingController();
  bool password = true;
  bool confirmpassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign Up',
                style: GoogleFonts.montserrat(
                    fontSize: 30,
                    color: Color(0xff233E8B),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'New to DCP ? Please provide your details !!!',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  color: apptealColor,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              EnterField(
                'Firstname',
                'Firstname',
                _controller,
              ),
              SizedBox(
                height: 20,
              ),
              EnterField(
                'Lastname',
                'Lastname ',
                _controller,
              ),
              SizedBox(
                height: 20,
              ),
              EnterField('Email ID', 'Email ID', _controller),
              SizedBox(
                height: 20,
              ),
              EnterField('Mobile Number', 'Mobile Number', _controller),
              SizedBox(
                height: 20,
              ),
              EnterField(
                'Password',
                'Password',
                _controller,
                obscure: password,
                widget: IconButton(
                    onPressed: () {
                      setState(() {
                        (password) ? password = false : password = true;
                      });
                    },
                    icon: (password)
                        ? Icon(FontAwesomeIcons.eyeSlash)
                        : Icon(FontAwesomeIcons.eye)),
              ),
              SizedBox(
                height: 20,
              ),
              EnterField(
                'Confirm Password',
                'Confirm Password',
                _controller,
                obscure: confirmpassword,
                widget: IconButton(
                    onPressed: () {
                      setState(() {
                        (confirmpassword)
                            ? confirmpassword = false
                            : confirmpassword = true;
                      });
                    },
                    icon: (confirmpassword)
                        ? Icon(FontAwesomeIcons.eyeSlash)
                        : Icon(FontAwesomeIcons.eye)),
              ),
              SizedBox(
                height: 40,
              ),
              commonBtn(
                  s: 'Sign Up',
                  bgcolor: appblueColor,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInScreen()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
