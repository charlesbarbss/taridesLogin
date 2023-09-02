import 'package:csc_picker/csc_picker.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:sample/createAccount4.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount3 extends StatefulWidget {
  const CreateAccount3({super.key});

  @override
  State<CreateAccount3> createState() => _CreateAccount3State();
}

class _CreateAccount3State extends State<CreateAccount3> {
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool _isValidEmail = true;
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
    emailController.removeListener(onListen);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.addListener(onListen);
  }

  void onListen() => setState(() {});

  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";
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
              'STEP 3',
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
                prefixIconColor: Color(0x3fff454545),
                labelText: 'Username',
              ),
            ),
            SizedBox(
              height: 21,
            ),
            TextFormField(
              style: TextStyle(color: Color(0x3fff454545)),
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              autofillHints: [AutofillHints.email],
              validator: (email) {
                if (email != null && !EmailValidator.validate(email)) {
                  setState(() {
                    _isValidEmail = false;
                  });
                  return 'Enter Valid Email';
                }
                setState(() {
                  _isValidEmail = true;
                });
                return null;
              },
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: !_isValidEmail ? Colors.red : Color(0x3fffFFFFF0),
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
                prefixIcon: Icon(Icons.email),
                prefixIconColor: Color(0x3fff454545),
                suffixIcon: emailController.text.isEmpty
                    ? Container(width: 0)
                    : IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () => emailController.clear(),
                      ),
                labelText: 'Email',
              ),
            ),
            // TextField(
            //   onTap: () {},
            //   keyboardType: TextInputType.emailAddress,
            //   style: GoogleFonts.inter(
            //     color: Color(0x3fff454545),
            //   ),
            //   decoration: InputDecoration(
            //     focusedBorder: OutlineInputBorder(
            //       borderSide: BorderSide(
            //         color: Color(0x3fffFFFFF0),
            //       ),
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(15.0),
            //       ),
            //     ),
            //     enabledBorder: OutlineInputBorder(
            //       borderSide: BorderSide(
            //         color: Color(0x3fffFFFFF0),
            //       ),
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(15.0),
            //       ),
            //     ),
            //     labelStyle: GoogleFonts.montserrat(
            //       color: Color(0x3fff454545),
            //     ),
            //     prefixIcon: Icon(Icons.email),
            //     prefixIconColor: Color(0x3fff454545),
            //     labelText: 'Email',
            //   ),
            // ),
            SizedBox(
              height: 21,
            ),
            CSCPicker(
              layout: Layout.vertical,
              onCountryChanged: (value) {},
              onStateChanged: (value) {},
              onCityChanged: (value) {},
              countryDropdownLabel: 'Country',
              stateDropdownLabel: 'State',
              cityDropdownLabel: 'City',
              dropdownDialogRadius: 15,
              searchBarRadius: 15,
            ),

            const SizedBox(
              height: 40.0,
            ),
            Center(
              child: Form(
                key: formKey,
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
                    final form = formKey.currentState!;
                    if (form.validate()) {
                      final email = emailController.text;
                      ScaffoldMessenger.of(context)
                        ..removeCurrentSnackBar()
                        ..showSnackBar(
                            SnackBar(content: Text('Your Email is $email')));
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CreateAccount4(),
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
            ),
          ],
        ),
      ),
    );
  }
}
