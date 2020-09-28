import 'package:flutter/material.dart';

class ProfileSetUp extends StatefulWidget {
  @override
  _ProfileSetUpState createState() => _ProfileSetUpState();
}

class _ProfileSetUpState extends State<ProfileSetUp> {
  String _genderBtn;

  static const genderItem = <String>['Male', 'Female', 'Other'];

  final List<DropdownMenuItem<String>> _dropDownGenderItem = genderItem
      .map(
        (e) => DropdownMenuItem<String>(
          value: e,
          child: Text(e),
        ),
      )
      .toList();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
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
              child: Container(
                height: 170,
                width: 118,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 112,
                      width: 116,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: Color(0xffDBDBDB),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/icon/user 3.png",
                          height: 80,
                          width: 70,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: SizedBox(
                        height: 38,
                        width: 38,
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
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Next items...
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/icon/gendeer.png",
                        height: 15,
                        width: 16,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Gender",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff727272),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: DropdownButton(
                          value: _genderBtn,
                          items: _dropDownGenderItem,
                          onChanged: ((String newValue) {
                            setState(() {
                              _genderBtn = newValue;
                            });
                          }),
                          hint: Expanded(
                            child: Text("Select your gender"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/icon/date.png",
                              height: 15,
                              width: 16,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Date of Birth",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff727272),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        TextField(
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            hintText: "Enter your date of birth",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/icon/location.png",
                              height: 15,
                              width: 16,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Location",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff727272),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        TextField(
                          keyboardType: TextInputType.streetAddress,
                          decoration: InputDecoration(
                            hintText: "Enter your location",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            SizedBox(
              width: double.infinity,
              child: FlatButton(
                onPressed: () {
                  // navigate to home page
                },
                child: Text(
                  "Complete",
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
          ],
        ),
      ),
    );
  }
}
