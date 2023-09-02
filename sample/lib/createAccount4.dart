import 'package:flutter/material.dart';
import 'package:sample/finishedCreatingAccount.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount4 extends StatefulWidget {
  const CreateAccount4({super.key});

  @override
  State<CreateAccount4> createState() => _CreateAccount4State();
}

class _CreateAccount4State extends State<CreateAccount4> {
  var checking = true;
  var checking2 = true;

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
                  'Set Up',
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
              'Your password must be at least 8\ncharacters long and should not include\ncommon words or personal information.',
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 44.0,
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
              height: 20,
            ),
            Text(
              '     Must be at least 8 characters.',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 25,
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
            SizedBox(
              height: 20,
            ),
            Text(
              '     Must be at least 8 characters.',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 50,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FinishedCreatingAccount(),
                    ),
                  );
                },
                child: Text(
                  'Continue',
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
