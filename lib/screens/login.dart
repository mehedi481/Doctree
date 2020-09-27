import 'package:Doctree/screens/sign_in.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo/DoctorApp3.png",
              height: 150,
              width: 159,
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              child: Text(
                "Create a free account",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff707070),
                ),
              ),
            ),
            SizedBox(
              height: 52,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {}, //TODO: Navigate to Create account page
                  child: Text(
                    "Create an Account",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  color: Color(0xff387AF6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    // Navigate to the sign in page..
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Sing In",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff387AF6),
                    ),
                  ),
                  color: Color(0xffFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
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
