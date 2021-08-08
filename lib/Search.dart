import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app_mammo/views/Hospitals.dart';
import 'package:flutter_app_mammo/views/MapView.dart';
import 'package:http/http.dart' as http;

import 'HospitalsModel.dart';

class MyApp extends StatelessWidget {
  List<String> hospitals = [
    "Al Faisal Specialized Hospital",
    "Alzaytouna Specialist Hospital",
    "Royal Scan",
    "Fedail Hospital Laboratory"
  ];

  String hospitalsInformation = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.search,
                size: 50.0,
                color: Colors.deepOrange,
              ),
              Expanded(child: TextField()),
              Container(
                height: 150.0,
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
/*
                MaterialButton(
                  child: Text("Go to map 2"),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return MapView(
                          name: "Mammo",
                          myColor: Colors.green,
                        );
                      }
                    ));
                  },
                ),

 */

                MyCustomCard(
                    mytext: "فحص الدم",
                    hospitalsInformation: "assets/icons/blood sample.png",
                    context: context),
                MyCustomCard(
                    mytext: "فحص كورونا",
                    hospitalsInformation: "assets/icons/coronavirus.png",
                    context: context),
                MyCustomCard(
                    mytext: "فحص الفسحة",
                    hospitalsInformation: "assets/icons/stool_analysis.png",
                    context: context),
                MyCustomCard(
                    mytext: "فحص البول",
                    hospitalsInformation: "assets/icons/urine_analysis.png",
                    context: context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Card MyCustomCard(
      {String mytext,
      String hospitalsInformation,
      Color mycolor: Colors.deepOrange,
      BuildContext context}) {
    Future<void> getHospitals() {}
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 60.0, 13.0, 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () async {
                  await getHospitals();
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Hospitals();
                  }));
                },
                child: Text(
                  mytext,
                  style: TextStyle(fontSize: 14.0),
                )),
            Image.asset(
              hospitalsInformation,
              width: 30,
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}





