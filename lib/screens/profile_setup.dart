import 'package:flutter/material.dart';

class ProfileSetUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Set up your profile",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff707070),
              ),
            ),
            Text(
              "Update your profile picture or renew information.",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff707070),
              ),
            ),
            Center(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: 112,
                    width: 118,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Color(0xffDBDBDB),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/icon/user 3.png",
                          height: 90,
                          width: 80,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 43,
                    width: 43,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xff387AF6),
                      ),
                      child: IconButton(
                        icon: Image.asset(
                          "assets/icon/camera.png",
                          height: 30,
                          width: 30,
                        ),
                        tooltip: "Camera",
                        onPressed: (){}
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
