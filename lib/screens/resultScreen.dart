// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/CustomWidgets/customAppbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final bool isMale;
  final String text;
  final double height;
  final double weight;
  final double age;

  ResultScreen(
      {super.key,
      required this.isMale,
      required this.text,
      required this.height,
      required this.weight,
      required this.age});

  @override
  String calculateBMI(double weight, double height) {
    double bmi = weight / (height / 100 * height / 100);

    if (bmi < 18.5) {
      return "You are underweight.\nConsider a balanced diet.";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return "You have a normal body weight.\nGood job!";
    } else if (bmi >= 25 && bmi < 29.9) {
      return "You are overweight.\nTry to exercise regularly.";
    } else if (bmi >= 30 && bmi < 34.9) {
      return "You have obesity (Class 1).\nConsider lifestyle changes.";
    } else if (bmi >= 35 && bmi < 39.9) {
      return "You have obesity (Class 2).\nSeek guidance from a health professional.";
    } else {
      return "You have severe obesity (Class 3).\nIt's advisable to consult a doctor.";
    }
  }

  Widget build(BuildContext context) {
    // double bmi = weight / (height * height);
    print("Height: $height, Weight: $weight");
    double bmi = weight / (height / 100 * height / 100);
    print("bmi $bmi");

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
              Expanded(
                flex: 1,
                child: Text(
                  "Your Result",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "inter",
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff24263B),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 50, bottom: 20),
                            child: Text(
                              calculateBMI(weight, height),
                              style: TextStyle(
                                color: Color.fromARGB(255, 60, 226, 146),
                                fontFamily: "inter",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  bmi.toStringAsFixed(1),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "inter",
                                    fontSize: 64,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "kg/m²",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "inter",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(30),
                            child: Text(
                              "You Have a Normal Body Weight,Good Job.",
                              style: TextStyle(
                                color: Color(0xff8B8C9E),
                                fontFamily: "inter",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 1,
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
                      Navigator.pop(
                        context,
                      );
                    },
                    child: Text(
                      "Re-Calculate",
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
