import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:patient/Screens/Home.dart';
import 'package:patient/Screens/MyPrescriprions.dart';
import 'package:patient/Screens/Signup.dart';
import 'package:patient/Utils/appConstants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  bool password = true;
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
                'Sign In',
                style: GoogleFonts.montserrat(
                    fontSize: 30,
                    color: Color(0xff233E8B),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Please Sign In to your account !!!',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  color: Color(0xff1EAE98),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              EnterField('Email ID', 'Email ID', _emailcontroller),
              SizedBox(
                height: 20,
              ),
              EnterField(
                'Password',
                'Password',
                _passwordcontroller,
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
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Forgot Password ?',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.montserrat(color: Color(0xff233E8B)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Remember Me',
                textAlign: TextAlign.right,
                style: GoogleFonts.montserrat(color: Color(0xff515151)),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'or Sign In with Fingerprint or Face',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.montserrat(color: Color(0xff1EAE98)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                      'assets/images/Icon ionic-md-finger-print.svg',
                      height: 90),
                  SvgPicture.asset('assets/images/Icon material-face.svg',
                      height: 90),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              commonBtn(
                  s: 'Sign In',
                  bgcolor: Color(0xff233E8B),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }),
              SizedBox(
                height: 20,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: 'Don\'t have an DCP account ?',
                      style: TextStyle(color: Color(0xff515151), fontSize: 18),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Sign up',
                            style: TextStyle(
                                color: Color(0xff1EAE98), fontSize: 18),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpPage()));
                                // navigate to desired screen
                              })
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
