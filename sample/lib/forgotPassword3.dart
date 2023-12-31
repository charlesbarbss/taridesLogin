import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sample/logInPage.dart';

class ForgotPassword3 extends StatefulWidget {
  const ForgotPassword3({super.key});

  @override
  State<ForgotPassword3> createState() {
    return _ForgotPassword3State();
  }
}

class _ForgotPassword3State extends State<ForgotPassword3> {
  var checking = true;
  var checking2 = true;

  void _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 1,
                  sigmaY: 1,
                ),
                child: AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide.none,
                  ),
                  title: Column(
                    children: [
                      SizedBox(
                        height: 115,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Password Recovery',
                            style: GoogleFonts.montserrat(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0x3fff060606),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Successful',
                        style: GoogleFonts.montserrat(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color(0x3fff060606),
                        ),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Text(
                        'Never lose access to your account again - recover your password quickly and securely',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 38,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromHeight(60),
                          maximumSize: Size.fromWidth(350),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide.none,
                          ),
                          backgroundColor: Color(0x3ffFF0000),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Return to Login',
                          style: GoogleFonts.montserrat(
                              color: Color(0x3fffFFFFF0),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Image.asset('assets/images/success.png'),
                top: 85,
                right: 0,
                left: 0,
              ),
            ],
          );
        });
  }

  void _isChecking() {
    setState(() {
      checking = false;
    });
  }

  void _isChecking2() {
    setState(() {
      checking = true;
    });
  }

  void _isChecking3() {
    setState(() {
      checking2 = false;
    });
  }

  void _isChecking4() {
    setState(() {
      checking2 = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0x3fff0C0D11),
      appBar: AppBar(
        flexibleSpace: Container(
          padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
          child: Image.asset('assets/images/3rdPage.png'),
        ),
        backgroundColor: Color(0x3fff0C0D11),
      ),
      body: Container(
        margin: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Set New',
                  style: GoogleFonts.montserrat(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  ' Password',
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0x3ffFF0000),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              'Stay protected by setting a new\npassword that is strong and unique -\nchoose one that only you can remember.',
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 45.0,
            ),
            if (checking == true)
              TextField(
                obscureText: true,
                style: GoogleFonts.inter(
                  color: Color(0x3fff454545),
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x3fffFFFFF0),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x3fffFFFFF0),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  labelStyle: GoogleFonts.montserrat(
                    color: Color(0x3fff454545),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  prefixIconColor: Color(0x3fff808080),
                  suffixIcon: IconButton(
                    onPressed: _isChecking,
                    icon: Icon(Icons.remove_red_eye),
                  ),
                  suffixIconColor: Color(0x3fff808080),
                  labelText: 'New Password',
                ),
              )
            else
              TextField(
                obscureText: false,
                style: GoogleFonts.inter(
                  color: Color(0x3fff454545),
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x3fffFFFFF0),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x3fffFFFFF0),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  labelStyle: GoogleFonts.montserrat(
                    color: Color(0x3fff454545),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  prefixIconColor: Color(0x3fff808080),
                  suffixIcon: IconButton(
                    onPressed: _isChecking2,
                    icon: Icon(Icons.remove_red_eye),
                  ),
                  suffixIconColor: Color(0x3fff808080),
                  labelText: 'New Password',
                ),
              ),
            SizedBox(
              height: 26,
            ),
            if (checking2 == true)
              TextField(
                obscureText: true,
                style: GoogleFonts.inter(
                  color: Color(0x3fff454545),
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x3fffFFFFF0),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x3fffFFFFF0),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  labelStyle: GoogleFonts.montserrat(
                    color: Color(0x3fff454545),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  prefixIconColor: Color(0x3fff808080),
                  suffixIcon: IconButton(
                    onPressed: _isChecking3,
                    icon: Icon(Icons.remove_red_eye),
                  ),
                  suffixIconColor: Color(0x3fff808080),
                  labelText: 'Confirm Password',
                ),
              )
            else
              TextField(
                obscureText: false,
                style: GoogleFonts.inter(
                  color: Color(0x3fff454545),
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x3fffFFFFF0),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x3fffFFFFF0),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  labelStyle: GoogleFonts.montserrat(
                    color: Color(0x3fff454545),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  prefixIconColor: Color(0x3fff808080),
                  suffixIcon: IconButton(
                    onPressed: _isChecking4,
                    icon: Icon(Icons.remove_red_eye),
                  ),
                  suffixIconColor: Color(0x3fff808080),
                  labelText: 'Confirm Password',
                ),
              ),
            const SizedBox(
              height: 40.0,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromHeight(60),
                  maximumSize: Size.fromWidth(350),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide.none,
                  ),
                  backgroundColor: Color(0x3ffFF0000),
                ),
                onPressed: () {
                  _showDialog();
                },
                child: Text(
                  'Submit Password',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
