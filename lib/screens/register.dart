import 'package:Doctree/screens/sign_in.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: [
              Image.asset(
                "assets/logo/DoctorApp3.png",
                height: 106,
                width: 109,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/icon/email.png",
                          height: 15,
                          width: 16,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff727272),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "example@gmail.com",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/icon/user 2.png",
                          height: 15,
                          width: 16,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff727272),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your name",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/icon/phone 2.png",
                          height: 16,
                          width: 16,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Phone",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff727272),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your phone number",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/icon/security.png",
                          height: 15,
                          width: 16,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff727272),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "enter your password",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {}, // Button Clicked Function
                  child: Text(
                    "Sign In",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account ? ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff707070),
                    ),
                  ),
                  InkWell(
                    child: Text(
                      " Sign in",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff387AF6),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Or sing in with ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff707070),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),

              // Social Button Images
              Row(
                children: [
                  IconButton(
                    icon: Image.asset(
                      "assets/icon/google.png",
                      height: 18,
                      width: 18,
                    ),
                    tooltip: "Google Link",
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset(
                      "assets/icon/facebook.png",
                      height: 18,
                      width: 18,
                    ),
                    tooltip: "Facebook Link",
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset(
                      "assets/icon/twitter.png",
                      height: 18,
                      width: 18,
                    ),
                    tooltip: "Twitter Link",
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset(
                      "assets/icon/instagram.png",
                      height: 18,
                      width: 18,
                    ),
                    tooltip: "Instagram Link",
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
