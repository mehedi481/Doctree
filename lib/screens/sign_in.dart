import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
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
              Center(
                child: InkWell(
                  child: Text(
                    "Forget Password ?",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff707070),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onTap: () {
                    //TODO: Forget password function
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // TODO: add here a divider after the text.
              Row(
                children: [
                  Text(
                    "Or sing in with",
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
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Haven't any ? ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff707070),
                    ),
                  ),
                  InkWell(
                    child: Text(
                      " Create an account",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff387AF6),
                      ),
                    ),
                    onTap: () {
                      //TODO: Navigate to Create an account
                    },
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
