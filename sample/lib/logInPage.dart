import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample/createAccount.dart';
import 'package:sample/forgotPassword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var checking = true;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0C0D11),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ta',
                      style: GoogleFonts.montserrat(
                        color: Color(0x3fffffff0),
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      'RIDES',
                      style: GoogleFonts.montserrat(
                        color: Color(0x3fffFF0000),
                        fontSize: 53.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 48,
                ),
                TextField(
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
                    prefixIcon: Icon(Icons.person),
                    prefixIconColor: Color(0x3fff808080),
                    labelText: 'Username',
                  ),
                ),
                SizedBox(
                  height: 35,
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
                      labelText: 'Password',
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
                      labelText: 'Password',
                    ),
                  ),
                SizedBox(
                  height: 21,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CreateAccount(),
                            ),
                          );
                        },
                        child: Text(
                          'Create an Account',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgotPassword(),
                            ),
                          );
                        },
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 21,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size.fromHeight(60),
                    maximumSize: Size.fromWidth(350),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide.none,
                    ),
                    backgroundColor: Color(0x3ffFF0000),
                  ),
                  onPressed: () {},
                  child: Text(
                    'LOGIN',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset('assets/images/circle.png'),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset('assets/images/bike.png'),
          ),
        ],
      ),
    );
  }
}
