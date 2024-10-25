// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/screens/resultScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../CustomWidgets/customAppbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  String text = "male";
  double value = 60;
  double weight = 60;
  double age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: CustomAppBar(
        title: "BMI Calculator",
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey
                                  .withOpacity(0.2), // Shadow color
                              spreadRadius: 1, // Spread radius
                              blurRadius: 5, // Blur radius
                              offset: Offset(1, 1), // Offset in x, y direction
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color:
                              (isMale) ? Color(0xff24263B) : Color(0xffE83D67),
                        ),
                        width: 155,
                        height: 180,
                        child: Column(
                          children: [
                            Icon(
                              Icons.male,
                              size: 140,
                              color: Color(0xffFFFFFF),
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                color: isMale == true
                                    ? Color(0xff8B8C9E)
                                    : Colors.white,
                                fontSize: 20,
                                fontFamily: 'inter',
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey
                                  .withOpacity(0.2), // Shadow color
                              spreadRadius: 1, // Spread radius
                              blurRadius: 5, // Blur radius
                              offset: Offset(1, 1), // Offset in x, y direction
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color:
                              (isMale) ? Color(0xffE83D67) : Color(0xff24263B),
                        ),
                        width: 155,
                        height: 180,
                        child: Column(
                          children: [
                            Icon(
                              Icons.female,
                              size: 140,
                              color: Color(0xffFFFFFF),
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                color: isMale != true
                                    ? Color(0xff8B8C9E)
                                    : Colors.white,
                                fontSize: 20,
                                fontFamily: 'inter',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.withOpacity(0.2), // Shadow color
                      spreadRadius: 1, // Spread radius
                      blurRadius: 5, // Blur radius
                      offset: Offset(1, 1), // Offset in x, y direction
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff24263B),
                ),
                width: double.infinity,
                height: 189,
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Height",
                        style: TextStyle(
                          fontFamily: 'inter',
                          fontSize: 24,
                          color: Color(0xff8B8C9E),
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              value.toStringAsFixed(0),
                              style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 80,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Slider(
                        value: value,
                        min: 60,
                        max: 230,
                        activeColor: Color(0xffE83D67),
                        inactiveColor: Colors.white,
                        onChanged: (value) {
                          setState(() {
                            this.value = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey
                                .withOpacity(0.2), // Shadow color
                            spreadRadius: 1, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(1, 1), // Offset in x, y direction
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff24263B),
                      ),
                      height: 179,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              "Weight",
                              style: TextStyle(
                                color: Color(0xff8B8C9E),
                                fontSize: 20,
                                fontFamily: 'inter',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                              bottom: 20,
                            ),
                            child: Text(
                              weight.toStringAsFixed(0),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontFamily: 'inter',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black
                                          .withOpacity(0.7), // Shadow color
                                      spreadRadius: 1, // Spread radius
                                      blurRadius: 5, // Blur radius
                                      offset: Offset(
                                          2, 2), // Offset in x, y direction
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 20, // Size of the circular button
                                  backgroundColor: Color(0xff8B8C9E),

                                  child: IconButton(
                                    highlightColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    icon: Icon(Icons.add),
                                    color: Colors.white,
                                    iconSize: 20,
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black
                                          .withOpacity(0.7), // Shadow color
                                      spreadRadius: 1, // Spread radius
                                      blurRadius: 5, // Blur radius
                                      offset: Offset(
                                          1, 1), // Offset in x, y direction
                                    ),
                                  ],
                                ),
                                margin: EdgeInsets.only(right: 10),
                                child: CircleAvatar(
                                  radius: 20, // Size of the circular button
                                  backgroundColor: Color(0xff8B8C9E),

                                  child: IconButton(
                                    highlightColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    icon: Icon(Icons.remove),
                                    color: Colors.white,
                                    iconSize: 20,
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                      ;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey
                                .withOpacity(0.2), // Shadow color
                            spreadRadius: 1, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(1, 1), // Offset in x, y direction
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff24263B),
                      ),
                      height: 179,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              "Age",
                              style: TextStyle(
                                color: Color(0xff8B8C9E),
                                fontSize: 20,
                                fontFamily: 'inter',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                              bottom: 20,
                            ),
                            child: Text(
                              age.toStringAsFixed(0),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontFamily: 'inter',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black
                                          .withOpacity(0.7), // Shadow color
                                      spreadRadius: 1, // Spread radius
                                      blurRadius: 5, // Blur radius
                                      offset: Offset(
                                          2, 2), // Offset in x, y direction
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 20, // Size of the circular button
                                  backgroundColor: Color(0xff8B8C9E),

                                  child: IconButton(
                                    highlightColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    icon: Icon(Icons.add),
                                    color: Colors.white,
                                    iconSize: 20,
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black
                                          .withOpacity(0.7), // Shadow color
                                      spreadRadius: 1, // Spread radius
                                      blurRadius: 5, // Blur radius
                                      offset: Offset(
                                          2, 2), // Offset in x, y direction
                                    ),
                                  ],
                                ),
                                margin: EdgeInsets.only(right: 10),
                                child: CircleAvatar(
                                  radius: 20, // Size of the circular button
                                  backgroundColor: Color(0xff8B8C9E),

                                  child: IconButton(
                                    highlightColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    icon: Icon(Icons.remove),
                                    color: Colors.white,
                                    iconSize: 20,
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffE83D67),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultScreen(
                            isMale: isMale,
                            age: age,
                            weight: weight,
                            text: text,
                            height: value,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'inter',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
