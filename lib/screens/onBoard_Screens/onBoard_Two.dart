import 'package:Doctree/screens/onBoard_Screens/onBoard_Three.dart';
import 'package:flutter/material.dart';

import '../login.dart';

class OnBoardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/image/OB2.png",
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 30, 8, 20),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "Live talk with doctors",
                            style: TextStyle(
                              color: Color(0xff707070),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Easily connect with doctors and start video chart for your better treatment & Prescription.",
                            style: TextStyle(
                              color: Color(0xff707070),
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Image.asset(
                                  "assets/icon/logo icon fade.png",
                                  height: 10,
                                  width: 10,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Image.asset(
                                  "assets/icon/logo icon monocolor.png",
                                  height: 10,
                                  width: 10,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Image.asset(
                                  "assets/icon/logo icon fade.png",
                                  height: 10,
                                  width: 10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          // Buttons
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: SizedBox(
                              width: double.infinity,
                              child: RaisedButton(
                                // Raised Button Here....
                                //TODO: Navigate to Next Page
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OnBoardThree(),
                                    ),
                                  );
                                },
                                color: Colors.blue,
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Center(
                                  child: Text(
                                    "Next",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Text(
                              "Skip for now",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            //TODO: Navigate to HomePage
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
