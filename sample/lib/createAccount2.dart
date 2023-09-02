import 'dart:ui';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sample/createAccount3.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount2 extends StatefulWidget {
  const CreateAccount2({super.key});

  @override
  State<CreateAccount2> createState() => _CreateAccount2State();
}

class _CreateAccount2State extends State<CreateAccount2> {
  TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1940),
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData(
            colorScheme: ColorScheme.light(
              primary: Color(0x3ffFF0000),
              onPrimary: Colors.white,
            ),
            textTheme: TextTheme(),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      String formattedDate = DateFormat('MM/dd/yyyy').format(picked);
      setState(() {
        _dateController.text = formattedDate;
      });
    }
  }

  var _gender;

  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0x3fff0C0D11),
      appBar: AppBar(
        flexibleSpace: Container(
          padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
          child: Image.asset('assets/images/2ndPage.png'),
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
                  'Create A',
                  style: GoogleFonts.montserrat(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  ' New Account',
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
              'Please enter your information below to \ncreate a new account',
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Text(
              'STEP 2',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            TextField(
              controller: _dateController,
              onTap: () {
                _selectDate(context);
              },
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
                prefixIcon: Icon(Icons.calendar_today),
                prefixIconColor: Color(0x3fff454545),
                labelText: 'Birthday',
              ),
            ),
            SizedBox(
              height: 21,
            ),
            DropdownButtonFormField(
              value: _gender,
              items: [
                DropdownMenuItem(
                  child: Text(
                    'Select Gender',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  value: -1,
                ),
                DropdownMenuItem(
                  child: Text(
                    'Male',
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: Color(0x3fff454545),
                    ),
                  ),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text(
                    'Female',
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: Color(0x3fff454545),
                    ),
                  ),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text(
                    'Others',
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: Color(0x3fff454545),
                    ),
                  ),
                  value: 3,
                ),
              ],
              onChanged: (v) {},
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
                prefixIcon: Icon(Icons.person_search_sharp),
                prefixIconColor: Color(0x3fff454545),
                labelText: 'Gender',
              ),
            ),
            SizedBox(
              height: 21,
            ),
            TextFormField(
              onTap: () async {
                final code = await countryPicker.showPicker(context: context);
                setState(() {
                  countryCode = code;
                });
              },
              style: GoogleFonts.inter(
                color: Color(0x3fff454545),
              ),
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              maxLines: 1,
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
                prefixIcon: countryCode != null
                    ? Container(
                        padding: EdgeInsets.all(10),
                        child: countryCode!.flagImage,
                      )
                    : Icon(Icons.phone),
                prefixIconColor: Color(0x3fff454545),
                labelStyle: GoogleFonts.montserrat(
                  color: Color(0x3fff454545),
                ),
                labelText: (countryCode?.dialCode ?? ' Phone Number'),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateAccount3(),
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
