import 'package:Doctree/screens/login.dart';
import 'package:flutter/material.dart';

class OnBoardThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/image/OB3.png",
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
                            "Get appointment",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Book an appointment with doctor, Chat with doctor via appointment letter Get consultant.",
                            style: TextStyle(color: Colors.black87),
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
                                      builder: (context) => Login(),
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
                                    "Get Started",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ),
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
